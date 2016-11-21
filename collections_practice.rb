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
  i = 0
  counting = Hash.new(0)
  final = Hash.new(0)
  output = []

  array.each { |ele| counting[ele[:name]] += 1}
   counting.each do |i, j|
     final = {:name => i, :count => j}
     output << final
   end
   output
 end
