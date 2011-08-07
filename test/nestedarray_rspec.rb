require 'rspec'
require 'lib/nestedarray'

describe 'NestedArray' do
  
  it "should nest given two arrays" do
    product_result = []
    expected = [4, 5, 6, 9, 8, 10, 12, 18, 12, 15, 18, 27, 36, 45, 54, 81]
    [1,2,3,9].extend(NestedArray).nested_each([4,5,6,9]) {|m,n| product_result << m * n}
    product_result.should == expected
  end
  
  it "should nest with index given two arrays" do
    outer_a = [1,2,3]
    inner_a = [4,8]
    sizeouter = sizeinner = 0
    outer_a.extend(NestedArray).nested_each_with_index(inner_a) do |m,n,i,j| 
      outer_a[i].should == m
      inner_a[j].should == n
      sizeouter = i
      sizeinner = j
    end
    
    outer_a.size.should == sizeouter + 1
    inner_a.size.should == sizeinner + 1
    
  
  end
  
end

