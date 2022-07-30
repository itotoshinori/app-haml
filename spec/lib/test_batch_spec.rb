require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = Tweet.create(title:"テスト") 
  end 
  describe 'モジュールテスト' do
    it 'バッチテスト1' do
      expect(Batch::TestBatch.testBatch).to eq '---- Batch::TestBatch.testBatch ----'
    end
  end
end
