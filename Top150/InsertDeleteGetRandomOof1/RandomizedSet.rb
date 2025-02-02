require 'set'

class RandomizedSet
  # set attr_reader to access set from outside the class
  attr_reader :set

  def initialize()
    @set = Set.new
  end


  def insert(val)
    if @set.include?(val)
      return false
    else
      @set.add(val)
      true
    end
  end

  def remove(val)
    if @set.include?(val)
      @set.delete(val)
      return true
    else 
      false
    end
  end

  def get_random
    return @set.to_a.sample
  end
end


  obj = RandomizedSet.new()
  # puts obj.random_set --> access outside the class
 puts obj.insert(10)
 puts obj.insert(11)
 puts obj.insert(12)
 puts obj.insert(13)
 puts obj.insert(14)
 puts obj.insert(15)
 puts obj.insert(16)
 puts obj.set
 puts obj.insert(10)
 puts obj.set
 puts obj.get_random

