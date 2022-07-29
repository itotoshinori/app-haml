require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = Tweet.create(title:"テスト") 
  end 
  describe '必須項目バリデーション確認' do
    it '必須項目が入力されていれば OK' do
      expect(@tweet.valid?).to eq(true)
    end

    it 'タイトルが空欄だったら NG' do
      @tweet.title = ''
      expect(@tweet.valid?).to eq(false)
    end
  end
end
