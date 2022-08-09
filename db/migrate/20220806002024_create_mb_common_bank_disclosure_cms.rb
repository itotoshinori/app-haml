class CreateMbCommonBankDisclosureCms < ActiveRecord::Migration[6.0]
  def change
    create_table :mb_common_bank_disclosure_cms do |t|
      t.integer :article_id
      t.integer :tweet_id
      t.string :status, :null => false, :default => "accept"
      t.string :requested_or_accepted, :null => false
      
      t.timestamps
    end
  end
end
