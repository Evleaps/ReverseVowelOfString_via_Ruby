class CountingBits

  public def initialize
    welcome_message
    num = gets.chomp
    count_bits(195565*178)
  end

  def welcome_message
    puts "\n
-----------------------------------------------------------------------------
          COUNTING BITS
-----------------------------------------------------------------------------
Given a non negative integer number num. For every numbers i in
the range 0 ≤ i ≤ num calculate the number of 1's in their binary
representation and return them as an array.

Please, enter u number below: \n"
  end

  def count_bits(num)
    startTime = Time.new

    result = []
    num += 1
    num.times { |i| result[i] = count_each(i) }

    endTime = Time.new
    puts "Finish! Current speed: #{endTime.to_i - startTime.to_i}"
  end

  def count_each(num)
    result = 0
    while num != 0
      result += 1 if (num % 2) == 1
      num = num / 2
    end
    return result
  end
end

inst = CountingBits.new
