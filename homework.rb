def sum_to(n)
    if n == 1
        return n
    elsif n < 0
        return nil
    else
        return n + sum_to(n-1)
    end 

# p sum_to(5)  # => returns 15
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil

def add_numbers(nums_array)
    if nums_array.length == 0
        return nil
    elsif nums_array.length == 1
        return nums_array.first
    else
        return nums_array[0] + add_numbers(nums_array[1..-1])
    end
end

# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

#helper method for gamma_fnc that I didn't need lol
def factorial(n)
    if n == 1
        return 1
    else
        return n * factorial(n-1)
    end
end

def gamma_fnc(n)
    if n == 0
        return nil
    elsif n == 1
        return 1
    else 
        return (n-1) * gamma_fnc(n-1)
    end
end

# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors,favorite)
    if flavors.length == 0
        return false
    elsif flavors.length == 1
        return flavors.first == favorite
    end

    if flavors[0] == favorite
        return true
    else
        return ice_cream_shop(flavors[1..-1],favorite)
    end
end

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(string)
    new_str = ""
    
    if string.length == 0
        return new_str
    elsif string.length == 1
        new_str += string
    else
        new_str += string[-1] + reverse(string[0..-2])
    end

    new_str
end

p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""