# a small quiz testing knowledge of ruby and rails

class ProgrammingQuiz
  def prepare_quiz
  puts 'What type of quiz would you like? (rails, ruby)'
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
  else
    array = [
      ["Create a controller for Greetings with two actions", "rails g controller Greetings action1 action2"],
      ["Create a scope called hidden, when the boolean draft is set to true", 'scope :hidden, -> { where(draft: true) }'],
      ["How index action for PostsController looks like?", "@posts = Post.all"],
      ["Set the root of the application to index action in Posts controller", "root to: 'posts#index'"]
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