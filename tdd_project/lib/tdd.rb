
class Array

    def my_uniq
        new_arr = []
        self.each do |ele|
            new_arr << ele unless new_arr.include?(ele)
        end
        new_arr
    end

    def two_sum
        new_arr = []
        self.each_with_index do |ele1, i1|
            self.each_with_index do |ele2, i2|
                if i1 < i2 
                    new_arr << [i1, i2] if  ele1 + ele2 == 0
                end
            end
        end
        new_arr
    end
end

def my_transpose(array)
    new_arr = Array.new(array.length) {Array.new(array.length)}
    array.each_with_index do |row, i|
        row.each_index do |j|
            new_arr[i][j] = array[j][i]
        end
    end
    new_arr
end

def stock_picker(array)
    new_arr = []
    array.each_with_index do |ele, i|
        array.each_with_index do |el, j|
            if j > i
                new_arr << [(el-ele), i, j]
            end
        end
    end
    new_arr.sort_by!{ |ele| ele[0] }
    a, b, c = new_arr[-1]
    [b, c]

end