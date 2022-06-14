print 'What is your name? '
name = gets.chomp
puts "Welcome to the game #{name}!"
print "Your task is to guess a number between 1 and 100.\nYou will have 10 attepts. What is your number? "

num = rand(100) + 1
attempts = 0 #number of attempts
guessed_it = false #flag

until attempts == 10 || guessed_it
    guess = gets.to_i

    if guess < num
        attempts += 1
        print "Oops, your number is too LOW. Try again! "

    elsif guess > num
        attempts += 1
        print "Oops, your number is too HIGH. Try again! "

    else guess == num
        attempts += 1
        puts "Well done, you guessed it! The number was #{num}, you had #{attempts} attempts."
        guessed_it = true
    end
end

puts 'You failed, hahaha' unless guessed_it