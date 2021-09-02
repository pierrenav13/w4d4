class Card
    attr_reader :value, :suit
    def initialize(value, suit)
        raise "value is not an integer or symbol" unless value.is_a?(Integer) || value.is_a?(Symbol)
        raise "not a valid card value" unless [2,3,4,5,6,7,8,9,10,:j,:q,:k,:a].include?(value)
        raise "not a valid card suit" unless [:hearts, :clubs, :spades, :diamonds].include?(suit)
        @value = value
        @suit = suit
    end

end