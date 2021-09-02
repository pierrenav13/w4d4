require_relative "deck"
require_relative "card"
class Hand
    attr_accessor :dealt_hand, :shuffled_deck, :deck
    
    def initialize(deck)
        @deck = deck
        @shuffled_deck = deck.shuffle
        @dealt_hand = []
    end

    def deal_hand
        until @dealt_hand.length == 5
            new_card = @shuffled_deck.pop 
            @dealt_hand << new_card
        end
    end

    def pair?
        count = 0
        @dealt_hand.each_with_index do |card1, i|
            @dealt_hand.each_with_index do |card2, j|
                if i < j
                    count += 1 if card1.value == card2.value 
                end
            end
        end
        count == 1
    end
end