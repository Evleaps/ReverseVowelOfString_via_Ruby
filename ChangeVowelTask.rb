class ChangeVowel

  MULTIPLE = 25000

  public def initialize
    welcome_message
  #  user_string = gets.chomp
    puts "Test 1/2..."
    replace_1(superStringTest)
    puts "Test 2/2..."
    replace_2(superStringTest)
  end

  private def superStringTest
    str = "qwertyuiopasdqwertyuiopasd"*MULTIPLE
    puts "The super line created. Please, wait! "
    return str
  end

  def welcome_message
    puts "\n
-----------------------------------------------------------------------------
          REVERSE VOWELS
-----------------------------------------------------------------------------
Hi! This program change a wivel letters in places.
Please, enter u line below: \n"
  end

#
#   //////////////////////////////////////////////////////////////////////////
#

  private def replace_1(user_string = "qwerty")
    startTime = Time.new

    indexes = Array.new()
    chars = Array.new()
    user_string = user_string.split('')
    user_string.each do |char|
      if char =~ /[EYUIOAeyuioa]/
            current_index = user_string.index(char)
            indexes.push(current_index)
            chars.push(char)
      end
    end

  chars.reverse!
  count = 0;
    indexes.each do |c_index|
      user_string[c_index] = chars[count]
      count += 1
    end

    endTime = Time.new
   # puts "...\nThank's! Your reverse line: #{user_string.join}"
    puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end

#    very slow alghorithm
#   //////////////////////////////////////////////////////////////////////////
#
  private def replace_2(user_string = "qwerty")
   startTime = Time.new

   vowels = user_string.gsub(/[^EYUIOAeyuioa]/, "")
   vowels = vowels.reverse

   count = 0;
   user_string.length.times do |i|
      if user_string[i] =~ /[EYUIOAeyuioa]/
          user_string[i] = vowels[count]
          count += 1
      end
   end

    endTime = Time.new
  #  puts "...\nThank's! Your reverse line: #{user_string}"
    puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end

#
#   //////////////////////////////////////////////////////////////////////////
#
end

inst = ChangeVowel.new
































