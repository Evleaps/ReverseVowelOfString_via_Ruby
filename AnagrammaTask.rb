class Anagramma
  public def initialize
    welcome_message
    str_1 = gets.chomp
    puts "Please, enter 2 line: "
    str_2 = gets.chomp
    if is_anagram(str_1, str_2) puts "true!"
    else puts "false"
    end
  end

  def welcome_message
    puts "\n
-----------------------------------------------------------------------------
          COUNTING BITS
-----------------------------------------------------------------------------
Given two strings s and t , write a function to determine
if \"t\" is an anagram of \"s\".

Please, enter 1 line below: \n"
  end


  private def is_anagram(str_1, str_2)

    # Lines with different length can't be anagram
    return false if str_1.length != str_2.length

    my_hash = Hash.new


    for i in "a"..."z"
      my_hash[i] = str_1.downcase.scan(i.to_s).count
    end

    for i in 0...str_2.length
      if my_hash[str_2[i]] != 0
        my_hash[str_2[i]] = my_hash[str_2[i]] - 1
      else return false
      end
    end

    return true
  end
end

init = Anagramma.new
