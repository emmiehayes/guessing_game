require './lib/answer_generator'
require './lib/responder'
require 'pry'

class GuessingGame
  include AnswerGenerator
  include Responder

  def initialize
    @answer = generate_answer
    @user_input = nil
    @guess_count = 0
  end

  def start_game
    puts welcome_response
    until @user_input == 'q'
    @user_input = gets.chomp
    @guess_count += 1
      case
      when @user_input == 'p'                 then puts welcome_response
      when @user_input == 'c'                 then puts cheat_response
      when @user_input == 'h'                 then puts hint_response
      when @user_input == 'q'                 then break
      when @user_input.to_i == @answer        then puts win_response
      when @user_input.to_i > @answer         then puts lower_response
      when @user_input.to_i < @answer         then puts higher_response
      end
    end
  end
end
