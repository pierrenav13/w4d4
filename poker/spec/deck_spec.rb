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



end