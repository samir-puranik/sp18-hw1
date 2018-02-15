class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    ints_a = a.map { |element| element.to_i }
    ints_a.map! do |element|
      element + 2
    end
    ints_a.select! { |element| element.even? }
    ints_a.uniq!
    ints_a.select! do |element|
      element < 10
    end
    ints_a.reduce(:+)
  end
end
