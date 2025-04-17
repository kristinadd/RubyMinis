class HashTest
  # Basic Hash Creation
  def self.basic_hash_creation
    # Method 1: Using hash literal syntax
    hash1 = { "name" => "John", "age" => 30 }
    
    # Method 2: Using symbol syntax (preferred for keys that are symbols)
    hash2 = { name: "John", age: 30 }
    
    # Method 3: Using Hash.new with default value
    hash3 = Hash.new(0) # Default value is 0
    
    # Method 4: Using Hash.new with a block
    hash4 = Hash.new { |hash, key| hash[key] = [] }
    
    [hash1, hash2, hash3, hash4]
  end

  # Hash Access and Modification
  def self.hash_access
    person = { name: "Alice", age: 25, city: "New York" }
    
    # Accessing values
    name = person[:name]
    age = person[:age]
    
    # Modifying values
    person[:age] = 26
    
    # Adding new key-value pairs
    person[:occupation] = "Developer"
    
    # Deleting key-value pairs
    person.delete(:city)
    
    person
  end

  # Hash Methods
  def self.hash_methods
    scores = { math: 95, science: 88, history: 92 }
    
    # Common hash methods
    keys = scores.keys
    values = scores.values
    has_key = scores.key?(:math)
    has_value = scores.value?(95)
    size = scores.size
    empty = scores.empty?
    
    # Merging hashes
    additional_scores = { english: 90, art: 85 }
    merged_scores = scores.merge(additional_scores)
    
    # Transforming hash
    doubled_scores = scores.transform_values { |v| v * 2 }
    
    # Filtering hash
    high_scores = scores.select { |subject, score| score > 90 }
    
    {
      keys: keys,
      values: values,
      has_key: has_key,
      has_value: has_value,
      size: size,
      empty: empty,
      merged_scores: merged_scores,
      doubled_scores: doubled_scores,
      high_scores: high_scores
    }
  end

  # Hash Iteration
  def self.hash_iteration
    fruits = { apple: 1.99, banana: 0.99, orange: 1.49 }
    
    # Different ways to iterate
    fruits.each do |fruit, price|
      puts "#{fruit}: $#{price}"
    end
    
    fruits.each_key do |fruit|
      puts fruit
    end
    
    fruits.each_value do |price|
      puts price
    end
    
    # Map/transform hash
    discounted_fruits = fruits.map do |fruit, price|
      [fruit, price * 0.9] # 10% discount
    end.to_h
    
    discounted_fruits
  end

  # Hash Default Values
  def self.hash_default_values
    # Default value with Hash.new
    word_count = Hash.new(0)
    text = "hello world hello ruby world"
    
    text.split.each do |word|
      word_count[word] += 1
    end
    
    # Default value with block
    cache = Hash.new { |hash, key| hash[key] = [] }
    cache[:users] << "Alice"
    cache[:users] << "Bob"
    
    { word_count: word_count, cache: cache }
  end

  # Nested Hashes
  def self.nested_hashes
    company = {
      name: "TechCorp",
      departments: {
        engineering: {
          employees: 50,
          budget: 1000000
        },
        marketing: {
          employees: 20,
          budget: 500000
        }
      }
    }
    
    # Accessing nested values
    eng_budget = company[:departments][:engineering][:budget]
    
    # Modifying nested values
    company[:departments][:engineering][:employees] += 5
    
    # Adding new nested structure
    company[:departments][:sales] = {
      employees: 30,
      budget: 750000
    }
    
    company
  end

  # Hash to Array and Array to Hash
  def self.hash_array_conversion
    # Hash to array
    hash = { a: 1, b: 2, c: 3 }
    array = hash.to_a
    
    # Array to hash
    pairs = [[:x, 10], [:y, 20], [:z, 30]]
    new_hash = pairs.to_h
    
    { array: array, new_hash: new_hash }
  end

  # Hash Exercises
  def self.exercises
    # Exercise 1: Create a method that takes a hash and returns a new hash with all values doubled
    def double_values(hash)
      hash.transform_values { |v| v * 2 }
    end
    
    # Exercise 2: Create a method that takes a hash and returns the sum of all values
    def sum_values(hash)
      hash.values.sum
    end
    
    # Exercise 3: Create a method that takes a hash and returns a new hash with only even values
    def even_values(hash)
      hash.select { |_, v| v.even? }
    end
    
    # Exercise 4: Create a method that takes a hash and returns the key with the highest value
    def key_with_highest_value(hash)
      hash.max_by { |_, v| v }[0]
    end
    
    test_hash = { a: 1, b: 2, c: 3, d: 4 }
    
    {
      doubled: double_values(test_hash),
      sum: sum_values(test_hash),
      evens: even_values(test_hash),
      highest: key_with_highest_value(test_hash)
    }
  end
end

# Test all methods
puts "Basic Hash Creation:"
p HashTest.basic_hash_creation

puts "\nHash Access and Modification:"
p HashTest.hash_access

puts "\nHash Methods:"
p HashTest.hash_methods

puts "\nHash Iteration:"
p HashTest.hash_iteration

puts "\nHash Default Values:"
p HashTest.hash_default_values

puts "\nNested Hashes:"
p HashTest.nested_hashes

puts "\nHash to Array and Array to Hash:"
p HashTest.hash_array_conversion

puts "\nExercises:"
p HashTest.exercises