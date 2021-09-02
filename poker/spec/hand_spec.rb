require "hand"

describe 'Hand' do
    let(:deck) { Deck.new }
    subject(:h) {Hand.new(deck)}

    describe '#initialize' do   
        it 'should take in a deck instance' do
            expect(h.deck).to eq(deck)
        end
    end

    describe '#deal_hand' do
        it 'should add cards to dealt_hand until length is 5' do
            expect(h.dealt_hand).to eq([])
            h.deal_hand
            expect(h.dealt_hand.length).to eq(5)
        end
        it "each card should be unique" do
            h.deal_hand
            expect(h.dealt_hand.uniq.length).to eq(5)
            expect(h.dealt_hand.all?{|card| card.is_a?(Card)}).to be(true)
        end
        it 'should remove cards from shuffled deck' do
            expect(h.shuffled_deck.length).to eq(52)
            h.deal_hand
            expect(h.shuffled_deck.length).to eq(47)
        end
    end

    describe "#pair?" do 
        it "should return true if there's only one set of matching card values " do 
            h.dealt_hand = [
            Card.new(2, :hearts),
            Card.new(2, :hearts),
            Card.new(4, :hearts),
            Card.new(5, :hearts),
            Card.new(7, :hearts)
            ]
            expect(h.pair?).to be(true)
        end
        it "should return false if there are no matching card values" do 
            h.dealt_hand = [
            Card.new(9, :hearts),
            Card.new(2, :hearts),
            Card.new(4, :hearts),
            Card.new(5, :hearts),
            Card.new(7, :hearts)
            ]
            expect(h.pair?).to be(false)
        end
    end

end