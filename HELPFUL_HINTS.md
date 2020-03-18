# Helpful Hints!

## Declaring Array Literals

```ruby
my_array = [1, 2, 3] # Declares an array literal and assigns it to my_array local var
```

## Helpful Array Methods

```ruby
array = [1, 2, 3, 4]

array.shuffle # Returns a new array in randomized order

array.each do |item| # Loop over each item in array, can do whatever you may need with inside do...end
  item
end

array.each_slice(2) do |item_one, item_two| # pull items from the array two at a time
  item_one
  item_two
end

array.shift # Removes first item from the array and returns it

array << 5 # Adds 5 to end of array

array.unshift some_item # Adds some_item to beginning of array

array.size # Returns number of items in the array
```


## Comparisons

```ruby
a = 1
b = 5

a < b # => true
a == b # => checks for value equality, this returns false
a > b # => false
```

## Loops

```ruby
  while array.size > 0 do
    # Keep doing this while array has any elements
  end

  loop do
    # Keep doing until program is forced to stop with control+c
  end
```