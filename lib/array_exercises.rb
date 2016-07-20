class Array
  def my_uniq
    new_array = []
    self.each do |el|
      new_array << el unless new_array.include?(el)
    end
    new_array
  end

  def two_sum
    new_array = []
    self.each_with_index do |el, idx|
      jdx = idx + 1
      until jdx == length
        new_array << [idx, jdx] if self[idx] + self[jdx] == 0
        jdx += 1
      end
    end
    new_array
  end

  def my_transpose
    new_matrix = []
    (0...self.length).each do |idx|
      new_row = []
      (0...self.length).each do |jdx|
        new_row << self[jdx][idx]
      end
      new_matrix << new_row
    end
    new_matrix
  end

  def stock_picker
    result = 0
    result_arr = []
    (0...self.length).each do |idx|
      ((idx + 1)...self.length).each do |jdx|
        if self[jdx] - self[idx] > result
          result = self[jdx] - self[idx]
          result_arr = [idx, jdx]
        end
      end
    end
    result_arr
  end
  #end of class
end
