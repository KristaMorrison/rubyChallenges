def same userId, password
  return userId == password
end

def longEnough str
  if str.length >= 6
    return true
  else
    return false
  end
end

def doesNotContainSpecial str
  return !(str.include?("#") || str.include?("!") || str.include?("$"))
end

def containsSpecial str
  return (str.include?("#") || str.include?("!") || str.include?("$"))
end


def containsDigit str
  ("0".."9").each {|x|
    result = str.include?(x)
    if (result)
      return true
    end
  }
  return false
end

def checkCase str
  if str.upcase == str || str.downcase == str
    return false
  else
    return true
  end
end



def validatePassword
  puts("Enter a User ID")
  userId = gets.chomp
  puts("Enter a password")
  password = gets.chomp

  if same(userId, password)
    print("User ID and password cannot be the same, you bozo.")
  elsif !(longEnough(userId) && longEnough(password))
    print("User ID and password must be at least 6 characters each, you bozo.")
  elsif containsSpecial(userId)
    print("User ID cannot contain any special characters, you bozo.")
  elsif doesNotContainSpecial(password)
    print("Password must include at least one special character, you bozo.")
  elsif !containsDigit(password)
    print("Put a number in your password, bozo.")
  elsif !checkCase(password)
    print ("Use a lower and uppercase letter in your password, bozo.")
  else
    print("You're not a bozo! User ID and password accepted (bozo).")
  end
end
