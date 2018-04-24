Dir["./lib/*.rb"].each { |file| require file}
GuessingGame.new.start_game
