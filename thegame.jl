function g_g()
    secret-number = rand(1:100)
    attemptsg = 0
    win_g = false
    
    println("Welcome to Number Guessing Game!")
    println("I'm thinking of a number between 1 and 100.")
    
    while !win_g
        print("Enter your guess: ")
        guess = try
            parse(Int, readline())
        catch
            println("Invalid input! Please enter a number.")
            continue
        end
        
        attemptsg += 1
        
        if guess < secret_number
            println("Very low, try again.")
        elseif guess > secret_number
            println("Very High, try again.")
        else
            println("Congratulations! You got it right in $attemptsg attempt(s).")
            win_g = true
        end
    end
end

g_g()
