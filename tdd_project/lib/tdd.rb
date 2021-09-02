
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