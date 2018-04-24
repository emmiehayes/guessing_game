module Responder

  def welcome_response
                      """
                      I am thinking of a number between 1 and 100.
                  Let's see how many guesses it takes for you to guess the number.
                      At any point you may receive a (h)int or (c)heat.
                                    What is your guess?
                      """
  end

  def win_response
    if @guess_count == 1
      "Aren't you something! You guessed the number #{@answer} in a single guess!  Would you like to (p)lay again or (q)uit."
    else
      "CONGRATS! You guessed the number #{@answer} and it only took you #{@guess_count} guesses.  Would you like to (p)lay again or (q)uit."
    end
  end

  def lower_response
    "Too high, guess again."
  end

  def higher_response
    "Too low, guess again."
  end

  def play_again_response
    "Would you like to (p)lay again or (q)uit?"
  end

  def cheat_response
    "The number was #{@answer}. Would you like to (p)lay again or (q)uit."
  end

  def hint_response
    if @answer.odd?
      "The number is odd.  Guess again."
    else
      "The number is even.  Guess again."
    end
  end
end
