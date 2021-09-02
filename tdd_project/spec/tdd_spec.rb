require "tdd" 

describe "Array" do
    describe "#my_uniq" do 
        it "returns unique elements in order" do 
            arr = [1,2,1,3,3]
            expect(arr.my_uniq).to eq([1,2,3])
        end
    end

    describe "#two_sum" do
        it "find all position pairs that sum to 0" do 
            arr = [-1, 0, 2, -2, 1]
            expect(arr.two_sum).to eq([[0,4], [2,3]])
        end
    end

end


describe "#my_transpose" do
    it "transposes the array" do
        rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ]

        cols = [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
        ]
        expect(my_transpose(rows)).to eq(cols)
    end
end

describe '#stock_picker' do
    it 'picks the best day to buy and sell stocks' do
        arr = [1000, 20, 400, 100]
        expect(stock_picker(arr)).to eq([1, 2])
    end

end