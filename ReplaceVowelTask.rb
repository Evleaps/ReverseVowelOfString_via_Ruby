class ChangeVowel

  MULTIPLE = 25000

  public def initialize
    welcome_message
    user_string = gets.chomp
    puts "Test 1/4..."
    replace_1(user_string)
    puts "Test 2/4..."
    replace_2(user_string)
    puts "Test 3/4..."
    replace_3(user_string)
    puts "Test 4/4"
    replace_4(user_string)
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
  private def replace_4(user_string = "qwerty")
    startTime = Time.new
    stop = user_string.length

    for i in 0...stop
      break if i == stop

      if user_string[i] =~ /[EYUIOAeyuioa]/
        stop.downto(i+1) do |k|
          if user_string[k] =~ /[EYUIOAeyuioa]/
            tmp = user_string[i]
            user_string[i] = user_string[k]
            user_string[k] = tmp

            stop = k - 1
            break
          end
        end
      end
    end

    endTime = Time.new
    puts "...\nThank's! Your reverse line: #{user_string}"
  #  puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end
#
#   //////////////////////////////////////////////////////////////////////////
#
  private def replace_3(user_string = "qwerty")
    startTime = Time.new

    cursor_1 = 0
    cursor_2 = user_string.length - 1
    result   = -1

    char_1 = -1
    loop do
      result = my_for(cursor_1, cursor_2, user_string)

      if result != -1
        char_1 = result

        cursor_1 = cursor_2
        cursor_2 = result + 1
        result = my_negative_for(cursor_1, cursor_2, user_string)

        if result != -1
          tmp = user_string[char_1]
          user_string[char_1] = user_string[result]
          user_string[result] = tmp

          cursor_1 = cursor_2
          cursor_2 = result - 1
        else break
        end
      else break
      end
    end
      endTime = Time.new
      puts "...\nThank's! Your reverse line: #{user_string}"
   #   puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end


  private def my_for(start, stop, str)
    for i in start...stop
      return i if str[i] =~ /[EYUIOAeyuioa]/
    end
    return -1
  end

  private def my_negative_for(start, stop, str)
    (start).downto(stop) do |i|
      return i if str[i] =~ /[EYUIOAeyuioa]/
    end
    return -1
  end


#   faster by 60%
#   //////////////////////////////////////////////////////////////////////////
#
  private def replace_2(user_string = "qwerty")
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
    puts "...\nThank's! Your reverse line: #{user_string}"
   # puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end

#    very slow alghorithm
#   //////////////////////////////////////////////////////////////////////////
#
  private def replace_1(user_string = "qwerty")
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
    puts "...\nThank's! Your reverse line: #{user_string}"
   # puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end

#
#   //////////////////////////////////////////////////////////////////////////
#
end

inst = ChangeVowel.new
































