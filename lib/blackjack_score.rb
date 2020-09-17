# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  # Check for number of cards in hand
  if hand.length < 2 || hand.length > 5
    raise ArgumentError.new("Wrong amount of cards")
  end

  score = 0

  hand.each do |item|
    # Check if each card is valid. Determine value of Ace and tally it.
    if VALID_CARDS.include?(item)
      case item
      when "Jack", "Queen", "King"
        score += 10
      when Integer
        score += item
      when "Ace"
        if score <= 10
          score += 11
        elsif
        score += 1
        end
      end
    else
      raise ArgumentError.new("You have an Invalid card")
    end
  end
  # Losing condition
  if score > 21
    raise ArgumentError.new("You lose")
  end
    return score
end


