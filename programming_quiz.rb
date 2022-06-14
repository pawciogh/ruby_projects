# a small quiz testing knowledge of ruby, rails and git

class ProgrammingQuiz
  def prepare_quiz
  puts 'What type of quiz would you like? (rails, ruby, git, command line)'
  type = gets.chomp
  puts 'How many questions would you like?'
  number = gets.chomp.to_i
  build_quiz(type, number)
  end
  
  def build_quiz(quiz_type, number_of_questions)
  if quiz_type == 'ruby'
  array = [
    ["What is syntax for ruby method", "def methodName code... end"],
    ["A Constant is a type of variable which always starts with a capital letter. Show me an example", "Fruit = 'orange'"],
    ["How would you interpolate String in ruby?", '"Hello, #{name}!"'],
    ["Show me an example of global variable", "$global_variable"],
    ["Before initialization, a global variable has the special value, what is it?", "nil"]
  ]
  elsif quiz_type == 'rails'
  array = [
    ["Create a controller for Greetings with two actions", "rails g controller Greetings action1 action2"],
    ["Create a scope called hidden, when the boolean draft is set to true", "scope :hidden, -> { where(draft: true) }"],
    ["What is inside index action for PostsController?", "@posts = Post.all"],
    ["Set the root of the application to index action in Posts controller", "root to: 'posts#index'"]
  ]
  
  elsif quiz_type == 'git'
  
  array = [
    ["How to initialize repository?", "git init"],
    ["How to check git status?", "git status"],
    ["How to add file.js to staging area?", "git add file.js"],
    ["How to add a few files to stating area? (file.js, index.html)?", "git add file.js index.html"],
    ["How to add all changes to the stating area?", "git add ."],
    ["How to commit?", "git commit -m 'Commit message'"],
  ]
  
  else
    array = [
      ["How to check presence of hidden files, for instance .git file?", "ls -a"],
      ["How to quickly create index.html file?", "touch index.html"],
      ["How to change directory?", "cd directory_name"],
      ["How to make directory?", "mkdir directory_name"]
    ]
  
  end
  
  array.shuffle.take(number_of_questions).each do |question |
      puts question[0]
    answer = gets.chomp
  while answer != question[1]
  puts 'Try again...'
  answer = gets.chomp
  end
  end #end of loop
  puts 'Well done, you have answered all the questions!'
  
  end #end of method
  object = ProgrammingQuiz.new
  object.prepare_quiz
  end