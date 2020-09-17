# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']


cards_in_hand = ["Jack", "Queen", 10, 5, 6, 8]


def blackjack_score(hand)

  if hand.length < 2 || hand.length > 5
    raise ArgumentError.new("Wrong amount of cards")
  end

  score = 0

  hand.each do |item|

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

  if score > 21
    raise ArgumentError.new("You lose")
  end

    return score

end

# pp blackjack_score(cards_in_hand)

