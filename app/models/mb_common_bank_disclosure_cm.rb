class MbCommonBankDisclosureCm < ApplicationRecord
    include AASM

  # 状態の説明
  # 未承認(unapproved)
  # 承認中(pending)
  # 承認済(approved)
  # 却下(rejection)
  aasm :column => 'status' do
    state :unapproved, :initial => true
    state :pending, :approved, :rejection

    before_all_events :log_event_start
    after_all_events :log_event_end
    
    # 未承認＝＞承認中
    event :check do
      before do
        before_anything
      end
      after do
        after_anything
      end
      transitions :from => :unapproved, :to => :pending
    end

    # 承認中＝＞承認済
    event :approve do
      transitions :from => :pending, :to => :approved
    end

    # 承認中＝＞未承認
    event :remand do
      transitions :from => :pending, :to => :unapproved
    end

    # 承認中＝＞却下
    event :reject do
      transitions :from => :pending, :to => :rejection
    end
  end
  def all_jikkou
    project = MbCommonBankDisclosureCm.new
    project.check
  end
  def log_event_start
    puts "before_all_events changing from #{aasm.from_state} to #{aasm.to_state} (event: #{aasm.current_event})"
  end

  def before_anything
    puts "checkのbefore処理"
  end

  def after_anything
    puts "checkのafter処理"
  end
end
