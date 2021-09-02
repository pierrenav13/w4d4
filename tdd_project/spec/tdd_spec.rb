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

