namespace :sample do
  desc "hello world task"
  task :hello do
    puts "hello world"
  end
  desc "goodby world task"
  task :goodby do
      #debugger
      puts "goodby world"
  end
  desc "hello world task"
  task hello2: :environment do
    puts Tweet.first().title
  end
end