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
        (0...self.length).each do |i|
            (i+1...self.length).each do |j| 
                new_arr << [i, j] if self[i] + self[j] == 0 && i != j
            end
        end
        new_arr
    end

    def my_transpose
        cols = Array.new(self.length) { Array.new }

        (0...self.length).each do |i|
            # new_arr = []
            (0...self.length).each do |j|
                cols[i] << self[j][i]
            end
            # cols << new_arr
        end
        cols
        
        # self.transpose
    end
require 'byebug'
    def stock_picker
        min = 0
        max = 0
        max_idx = 0
        min_idx = 0
        self.each_with_index do |price,i|
            if price > max 
                max = price 
                max_idx = i 
            end
        end
        debugger
        (0...self[max_idx]).each do |j|
            if self[j] < min || min == 0
                min = self[j]
                min_idx = j 
            end
        end
        [min_idx,max_idx]
    end

end

# 7 days
# amazon = [3000, 3200, 3400, 3000, 2800]
# amazomn highest day = 3400
# need to buy between [3000, 3200] 