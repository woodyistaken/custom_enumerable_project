module Enumerable
  # Your code goes here
  def my_all?
    self.each do |item|
      return false unless yield(item)
    end
    true
  end
  def my_any?
    self.each do |item|
      return true if yield(item)
    end
    false
  end
  def my_count
    return self.size unless block_given?
    sum=0
    self.each do |item|
      sum+=1 if yield(item)
    end
    sum
  end
  def my_each
    self.size.times do |i|
      yield(self[i])
    end
    self
  end
  def my_each_with_index
    self.size.times do |i|
      yield(self[i],i)
    end
    self
  end
  def my_inject(init)

    self.each do|item|
      init=yield(init,item)
    end
    init
  end

  def my_map
    arr=[]
    self.each do |item|
      arr.push(yield(item))
    end
    arr
  end

  def my_none?
    self.each do |item|
      return false if yield(item)
    end
    true
  end

  def my_select
    arr=[]
    self.each do |item|
      arr.push(item) if yield(item)
    end
    arr
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end
