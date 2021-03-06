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

    def two_pair?
        count = 0
        @dealt_hand.each_with_index do |card1, i|
            @dealt_hand.each_with_index do |card2, j|
                if i < j
                    count += 1 if card1.value == card2.value 
                end
            end
        end
        count == 2
    end

    def three_of_a_kind?
        hash = Hash.new(0)
        @dealt_hand.each do |card|
            hash[card.value] += 1
        end
        hash.each {|k, v| return true if v == 3}
        false
    end

    def straight?
        hash1 = Hash.new(0)
        @dealt_hand.each { |card| hash1[card.value] += 1}
        i = 0
        j = 4
        arr = [:a,2,3,4,5,6,7,8,9,10,:j,:q,:k,:a]
        until j == arr.length
            hash2 = Hash.new(0)
            arr[i..j].each { |card| hash2[card] += 1}
            return true if hash1 == hash2
            i += 1
            j += 1
        end
        false
    end

    def flush?
        hash = Hash.new(0)
        @dealt_hand.each{ |card| hash[card.suit] += 1}
        hash.each{ |k,v| return true if v == 5 }
        false
    end

    def full_house?
        hash = Hash.new(0)
        @dealt_hand.each {|card| hash[card.value] += 1}
        if three_of_a_kind?
            hash.each { |k,v| return true if v == 2}
        end
        false
    end

    def four_of_a_kind?  
        hash = Hash.new(0)

        @dealt_hand.each { |card| hash[card.value] += 1 }
        hash.each {|k, v| return true if v == 4}
        false
    
    end

    def straight_flush?
        flush? && straight?
    end

    def royal_flush?
        rf = [10,:j,:q,:k,:a]
        # p @dealt_hand.map(&:value)
        straight_flush?
        if straight_flush? 
            return true if @dealt_hand.all?{ |card| rf.include?(card.value)}
        end
        false
    end

    def hand_value
        return 9 if royal_flush?
        return 8 if straight_flush?
        return 7 if four_of_a_kind?
        return 6 if full_house?
        return 5 if flush?
        return 4 if straight?
        return 3 if three_of_a_kind?
        return 2 if pair?
        arr = [2,3,4,5,6,7,8,9,10,:j,:q,:k,:a]
        arr.reverse!
        @dealt_hand.sort_by!{ |card| arr.index(card.value) }
        idx = arr.index(@dealt_hand[0].value)
        return (1.0/(idx + 1))
    end

    

end