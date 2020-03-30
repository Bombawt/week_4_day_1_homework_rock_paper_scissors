require 'minitest/autorun'
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative '../models/game'

class TestCalculator < Minitest::Test

  def test_guess_paper_loses_to_scissors()
    guess = Game.paper("scissors")
    assert_equal("Scissors wins!", guess)
  end

  def test_guess_paper_wins_to_rock()
    guess = Game.paper("rock")
    assert_equal("Paper wins!", guess)
  end

  def test_guess_paper_draws_with_paper()
    guess = Game.paper("paper")
    assert_equal("It's a draw!", guess)
  end

  def test_guess_scissors_loses_to_rock()
    guess = Game.scissors("rock")
    assert_equal("Rock wins!", guess)
  end

  def test_guess_scissors_wins_to_paper()
    guess = Game.scissors("paper")
    assert_equal("Scissors wins!", guess)
  end

  def test_guess_scissors_draws_with_scissors()
    guess = Game.scissors("scissors")
    assert_equal("It's a draw!", guess)
  end

  def test_guess_rock_loses_to_paper()
    guess = Game.rock("paper")
    assert_equal("Paper wins!", guess)
  end

  def test_guess_rock_wins_to_scissors()
    guess = Game.rock("scissors")
    assert_equal("Rock wins!", guess)
  end

  def test_guess_rock_draws_with_rock()
    guess = Game.rock("rock")
    assert_equal("It's a draw!", guess)
  end














end
