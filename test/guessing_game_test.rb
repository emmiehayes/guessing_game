require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/answer_generator'
require './lib/guessing_game'
require './lib/responder'

class GuessingGameTest < Minitest::Test
  def test_it_exists
    guessing_game = GuessingGame.new
    assert_instance_of GuessingGame, guessing_game
  end

  def random_number_exists
    guessing_game = GuessingGame.new
    assert_equal Integer, @random_number.class
  end

  def test_win_response
    guessing_game = GuessingGame.new
    assert guessing_game.win_response.include?("CONGRATS!")
  end

  def test_hint_response_even
    guessing_game = GuessingGame.new
    @answer = 6
    assert guessing_game.hint_response.include?("even")
  end

  def test_hint_response_odd
    guessing_game = GuessingGame.new
    @answer = 3
    refute guessing_game.hint_response.include?("even")
  end
end
