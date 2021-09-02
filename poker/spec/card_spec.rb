require "card"


describe 'Card' do
    subject(:c) {Card.new(4, :hearts)}
    describe '#initialize' do
        it 'should contain a value and a suit' do
            expect(c.value).to eq(4)
            expect(c.suit).to eq(:hearts)
        end
    end


end