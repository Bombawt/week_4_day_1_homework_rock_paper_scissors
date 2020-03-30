class Game

def self.paper(guess)
  if guess == "paper"
    return "It's a draw!"
  elsif guess == "scissors"
    return "Scissors wins!"
  end
  return "Paper wins!"
end

def self.rock(guess)
  if guess == "rock"
    return "It's a draw!"
  elsif guess == "paper"
    return "Paper wins!"
  end
  return "Rock wins!"
end

def self.scissors(guess)
  if guess == "scissors"
    return "It's a draw!"
  elsif guess == "rock"
    return "Rock wins!"
  end
  return "Scissors wins!"
end
















end
