class Hand
    attr_accessor :dealt_hand, :shuffled_deck
    def initialize(deck)
        @deck = deck
        @shuffled_deck = deck.shuffle
        @dealt_hand = []
    end



end