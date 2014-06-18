require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
array = dogs

def how_many_dogs(array)
  array.length
end

def name_lengths(array)
  placehold = array.dup
  x = 0
while array.length > x
  placehold[x]=array[x].length
  x += 1
end
  placehold

  #>>>>>>>>>>>>>>>>>>>Other Methods<<<<<<<<<<<<<<<<<<<<<<
  # new_dogs_array_with_length = []
  # dogs.each do \dog\
  #   new_dogs_array_with_lengths.push(dog_name.length)
  # end
  #new_dog_array_with_length

  #......................................................
  # dogs.collect do |dog|
  #   dog.length
  # end

  #......................................................
  # dog_name_length_array = dogs.collect {|dog| dog.length}
  # dog_name_length_array

end

def reverse_dog_names(array)
  placehold = array.dup
  x = 0
  while array.length > x
    placehold[x]=array[x].reverse
    x += 1
  end
  placehold

  #>>>>>>>>>>>>>>>>>>>Other Methods<<<<<<<<<<<<<<<<<<<<<<
  # reversed_dog_name = []
  # dogs.each do |dog|
  #   reversed_dog_name = dog.reverse
  # end
  # reversed_dog_names.push (the_new_dog_name)

end

def first_three_dogs_with_each(dogs)
  # puts placehold = array.dup
  # puts placehold.pop # placehold

  #need place to remember the dogs
  first_three_dogs = []
  counter = 0
  dogs.each do |dog|
# dogs.each_with_index do \|dog, index|
    first_three_dogs.push(dog)
    counter += 1
    if counter == 3
      break
    end
  end
  first_three_dogs
end

def first_three_dogs_without_each(dogs)
  #slicing
  dogs[0..2]
end

def reverse_case_dog_names(dogs)



  #>>>>>>>>>>>>>>>>>>>Other Methods<<<<<<<<<<<<<<<<<<<<<<

  dogs.map {|dog| dog.swapcase}

  #>.....................................................
  #inverse_dog_name = []
  #dogs.each do |dog|
  #   new_dog_name = dog.swapcase
  #   inverse_dog_names.push(new_dog_name)
  #end

end

def sum_of_all_dog_name_lengths(dogs)

total_length = 0
  dogs.each do |dog_name|
    total_length = total_length + dog_name.length
  end
  total_length
end

def dogs_with_long_names(dogs)
  long_dog_names = []

  dogs.each do |dog_name|

    #Other Solution!
    # long_dog_names.push(dog_name.length > 4)

    if dog_name.length > 4
      long_dog_names.push(true)
    else
      long_dog_names.push(false)
    end
  end

  long_dog_names

  #dogs.map {|dog_name| dog_name.length > 4}
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

my_awesome_dog_array = ["Fido", "Harleigh", "Mali", "Trixie", "Snow","Victory"]
another_dog_array = ["Fido"]
check("how_many_dogs", how_many_dogs(my_awesome_dog_array) == 6)
check("how_many_dogs", how_many_dogs(another_dog_array) == 1)


check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(array) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

