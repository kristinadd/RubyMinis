class HIndex
  def self.h_index(citations)
    h_index = 0
    citations.sort.reverse.each_with_index do |citation, index|
      if (citation >= index +1) 
        h_index = index +1
      end
    end
    h_index
  end

  def self.h_index_2(citations)
    h = 0
    citations.sort.reverse.each_with_index do |num, i|
        if num > h
          h += 1
        end
    end
    return h
  end

  def self.h_index_3(citations)
    citations.sort.reverse.each_with_index.count(&:>)
  end
end

citations = [3,0,6,1,5]
citations2 = [1,3,1]
puts result = HIndex.h_index_3(citations2)
