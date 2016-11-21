def begins_with_r(tools)
  i = 0
  r = true
  while i < tools.length
    tools.each do |tool|
      if tool[0] != "r"
        return false
      end
    end
    i += 1
  end
  r
end


def contain_a(elements)
  arr = []
  i = 0
  while i < elements.length
    elements.each do |element|
      if element.include?("a")
        arr.push(element)
      end
    i += 1
    end
    return arr
  end
end


def first_wa(elements)
  i = 0

  while i < elements.length
    elements.each do |element|
      if element[0..1].include?("wa")
        return element
      end
    end
    i += 1
  end
end


def remove_non_strings(array)
  i = 0

  while i < array.length
    array.each do |element|
      if element.class != String
        array.delete(element)
      end
    end
    i += 1
  end
  return array
end



def count_elements(array)
  counter = Hash.new 0
  elements = Hash.new 0

  array.each { |element| counter[element[:name]] += 1}
  counter.each do |i, j|
    elements = {:name => i, :count => j}
  end
  return elements
end
