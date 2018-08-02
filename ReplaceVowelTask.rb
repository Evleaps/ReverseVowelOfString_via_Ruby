class ChangeVowel

  MULTIPLE = 25000

  public def initialize
    welcome_message
    user_string = gets.chomp
    puts "Test 1/2..."
    replace_0(user_string)
   # puts "Test 2/2..."
   # replace_2(superStringTest)
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
  private def replace_0(user_string = "qwerty")
    startTime = Time.new

    cursor_1 = 0
    cursor_2 = user_string.length - 1
    result = -1

    loop do
      break if (cursor_2 - cursor_1) <= 0

      result = my_for(cursor_1, cursor_2, user_string)

        puts "cursor_1: #{cursor_1}"
        puts "cursor_2: #{cursor_2}"
        puts "result: #{result} \n ------------- "

      if result != -1
        cursor_1 = cursor_2
        cursor_2 = result +1
        result = my_negative_for(cursor_1, cursor_2, user_string)

        puts "cursor_1: #{cursor_1}"
        puts "cursor_2: #{cursor_2}"
        puts "result: #{result}"

        if result != -1
          cursor_1 = cursor_2
          cursor_2 = result -1

          tmp = user_string[cursor_1]
          user_string[cursor_1] = user_string[cursor_2]
          user_string[cursor_2] = tmp

          cursor_1 += 1
          cursor_2
        else break
        end
      else break
      end
      puts user_string
      sleep(1)
    end
      endTime = Time.new
      puts "...\nThank's! Your reverse line: #{user_string}"
      puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end


  private def my_for(start, stop, str)
    for i in start...stop
      puts "str[i]: #{str[i]} (i = #{i}) str = #{str}"
      return i if str[i] =~ /[EYUIOAeyuioa]/
    end
    return -1
  end

  private def my_negative_for(start, stop, str)
    (start).downto(stop) do |i|
      puts "str[i]: #{str[i]} (i = #{i}) str = #{str}"
      if str[i] =~ /[EYUIOAeyuioa]/
        return i
      end
    end
    return -1
  end


#   faster by 60%
#   //////////////////////////////////////////////////////////////////////////
#
  private def replace_1(user_string = "qwerty")
    startTime = Time.new
    indexes = Array.new()
    chars = Array.new()

    for c_index in 0...user_string.length
      char = user_string[c_index]
      if char =~ /[EYUIOAeyuioa]/
        indexes.push(c_index)
        chars.push(char)
      end
    end

    chars.reverse!
    count = 0;
    for i in 0...indexes.length
      user_string[indexes[i]] = chars[count]
      count += 1
    end

    endTime = Time.new
  #  puts "...\nThank's! Your reverse line: #{user_string}"
    puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end

#    very slow alghorithm
#   //////////////////////////////////////////////////////////////////////////
#
  private def replace_2(user_string = "qwerty")
    startTime = Time.new

    vowels = user_string.gsub(/[^EYUIOAeyuioa]/, "")

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
































