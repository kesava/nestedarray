module NestedArray
  
  def nested_each(b)
    i=j=0
    until (i == self.size)
      until (j == b.size)
        yield self.[](i), b[j]
        j += 1
      end
      j = 0
      i += 1
    end
  end
  
  # nested_each method iterates through a nested array. 
  # It expects a block with two parameters: one for the outer array 
  # and the other for the nested array for each iteration.
 
  # For example [1,2].extend(NestedArray).nested_each([4,6]) {|m,n| puts "#{m * n}"}
  # should print 4,6,8 and 12.
  
  def nested_each_with_index(b)
    i=j=0
    until (i == self.size)
      until (j == b.size)
        yield self.[](i), b[j], i, j
        j += 1
      end
      j = 0
      i += 1
    end
  end
  
  # nested_each_with_index method iterates through a nested array with indices each well. 
  # It expects a block with four parameters: one for the outer array 
  # and the other for the nested array for each iteration. The other two parameters are for the indices for outer and nested arrays.
  
  # For example [1,2].extend(NestedArray).nested_each_index([4,6]) {|m,n,i,j| puts "#{i}, #{j} -- #{m}: #{n}"}
  # should print 
  # 0,0 -- 1:4
  # 0,1 -- 1:6
  # 1,0 -- 2:4
  # 1,1 -- 2:6
  
end
