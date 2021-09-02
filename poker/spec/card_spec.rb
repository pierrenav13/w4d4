require "card"


describe 'Card' do
    subject(:c) {Card.new(4, :hearts)}
    describe '#initialize' do
        it 'should contain a value and a suit' do
            expect(c.value).to eq(4)
            expect(c.suit).to eq(:hearts)
        end

        context "non valid inputs" do 
            it "raises an error when wrong type is passed in" do 
                expect{Card.new([1], :hearts)}.to raise_error("value is not an integer or symbol")
            end
            it "raises an error if card value is not valid" do 
                expect{Card.new(11, :hearts)}.to raise_error("not a valid card value") 
            end
            it "raises an error if card suit is not valid" do
                expect{Card.new(4, :nike)}.to raise_error("not a valid card suit")
            end
        end
    end
end