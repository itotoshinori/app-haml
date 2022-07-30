class Batch::TestBatch
    def self.testBatch
      tweet_id = Tweet.find(Tweet.last.id).id + 1
      Tweet.create(title:"バッチテスト#{tweet_id}")
      contents = File.read("#{Rails.root}/lib/test.txt") 
      #contents = File.read("http://localhost:3000/test.txt") 
      #contents.each_line do |content|
      puts message = '--バッチが実行されました--'
      message
        #puts content
      #end
    end
end