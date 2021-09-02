require_relative "card"

class Deck
    attr_reader :deck_arr, :shuffled_deck
    def self.make_deck
        empty_deck = []
        arr = [2,3,4,5,6,7,8,9,10,:j,:q,:k,:a]
        suits = [:hearts, :clubs, :spades, :diamonds]
        suits.each do |suit|
            arr.each do |value|
                empty_deck << Card.new(value, suit)
            end
        end
        empty_deck
    end

    def initialize
        @deck_arr = Deck.make_deck
        @shuffled_deck = shuffle
    end

    def shuffle
        @deck_arr.sample(52)
    end
end