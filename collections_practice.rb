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
  array.each {|element| counting[element[:name]] += 1}
   counting.each do |name2, count2|
     final = {:name => name2, :count => count2}
     output.push(final)
   end
   output
 end


def merge_data(keys, data)
  merged_data = []
  output = {}
  keys.each do |name|
    data.each do |key|
      key.each do |key2, value|
        if name[:first_name] == key2
          output = name.merge(value)
          merged_data.push(output)
        end
      end
    end
  end
  return merged_data
end


def find_cool(hashes)
  hashes.each do |hash|
    hash.each do |key, value|
      if hash[key] == "cool"
        return [hash]
      end
    end
  end
end




def organize_schools(schools)
  output = {}
  schools.each do |school, city|
    city_name = city[:location]
    output[city_name] ||= []
    output[city_name] << school
  end
  organized_schools
end
