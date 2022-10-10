# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

  def span
    self == [] ? nil : self.max - self.min
  end

  def average
    self == [] ? nil : 1.0 * self.sum / self.length 
  end

  def median
    return nil if self == []
    arr = self.sort
    self.length.even? ? (arr[self.length/2 - 1] *1.0 + arr[self.length/2])/2 : arr[self.length/2]
  end

  def counts
    chash = Hash.new(0)
    self.each {|ele| chash[ele] += 1}
    chash
  end

  def my_count(compare)
    check = self.select do |ele|
        ele == compare
    end

    check.length
  end

  def my_index(value)
    return nil unless self.include?(value)
    self.each_with_index do |ele, i|
        return i if ele == value
    end
  end

  def my_uniq
    uniqarr = []
    self.each { |ele| uniqarr << ele if !uniqarr.include?(ele) }
    uniqarr
  end

  def my_transpose
    rows = self.length
    col = self.length

    transposeArr = Array.new(rows) {Array.new(col)}

    (0...rows).each do |i|
        subarr = self[i]
        (0...col).each do |j|
            ele = subarr[j]
            transposeArr[j][i] =  ele
        end
    end
    
    transposeArr
  end
end
