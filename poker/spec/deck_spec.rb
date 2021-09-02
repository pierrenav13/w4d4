require "deck"

describe 'Deck' do
    subject(:d) {Deck.new}
    describe '#initialize' do
        it 'should contain 52 unique card instances' do 
            expect(d.deck_arr.length).to eq(52)
            expect(d.deck_arr.uniq.length).to eq(52)
            expect(d.deck_arr.all? {|card| card.is_a?(Card)}).to be(true)
        end
    end 

    describe "#shuffle" do
        it "should rearrange the order of the deck of cards" do
            expect(d.shuffle).to_not eq(d.deck_arr)
            expect(d.shuffle.length).to eq(52)
        end
        it "should create a new deck_arr for shuffled cards" do 
            d.shuffle
            expect(d.deck_arr).to_not be(d.shuffle)
        end
    end
end