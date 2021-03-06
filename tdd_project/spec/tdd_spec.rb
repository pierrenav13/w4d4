require "tdd" 

describe "Array" do
    describe "#my_uniq" do 
        arr = [1,2,1,3,3]
        it "returns unique elements in order" do 
            # arr = [1,2,1,3,3]
            expect(arr.my_uniq).to eq([1,2,3])
        end
        it "should return a new array" do 
            #  arr = [1,2,1,3,3]
            expect(arr.my_uniq).not_to be (arr)
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
        arr = [1000, 20, 400, 100] #make sure array contains only numbers
        expect(stock_picker(arr)).to eq([1, 2])
    end

end

describe "TowersOfHanoi" do 
    subject(:t) { TowersOfHanoi.new}
    describe "#initialize" do 
        it "should create a pile_1 instance variable" do 
            expect(t.pile_1).to eq([4,3,2,1]) #check to make sure it's an array
        end
        it "should create an empty array for other piles" do
            expect(t.pile_2).to eq([])
            expect(t.pile_3).to eq([])
        end
    end

    describe "#move" do
        it "should move the top disc to another pile" do 
            t.move([1,2]) #cant put a bigger piece on top of a smaller piece/check error if moving blank array
            expect(t.pile_1).to eq([4,3,2])
            expect(t.pile_2).to eq([1])
            expect(t.pile_3).to eq([])
        end
    end

    describe "#won?" do 
        it "player won the game?" do
            t.pile_1 = []
            t.pile_2 = []
            t.pile_3 = [4,3,2,1]
            expect(t.won?).to eq(true)
        end
    end
end