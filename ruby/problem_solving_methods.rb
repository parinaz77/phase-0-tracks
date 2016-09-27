def search (array, number)
  array.each do |num|
    if num == number
      new_array=array[0...array.index(number)]
      p new_array.length
    end
  end
end

array = [3,6,9,2,5,7]
p search(array, 2)

def fib(num)
  array=[0,1]
  count=1
  if num >1
    while count < num-1
      array.push(array[-1]+array[-2])
      count +=1
    end
  end
  array
end

p fib(100)

# show sorting an array with ruby built in method
def sort_array (array)  # create a method that gets an array as a parameter
  array.sort! # sort and return the array
end
p sort_array([3,5,6,1,2]) #call the method and give an array