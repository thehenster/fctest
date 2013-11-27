module Fctest
  class PrimeTable

    def initialize(n)
      @n = n.to_i
    end

    # moved the code calculating the primes into it's own class for reusability.
    def primes
      @primes ||= Prime.new(@n).primes
    end

    # create a 2 dimensional array
    def array
      # return it if already calculated..
      return @array if @array

      @array = []

      # top row
      @array << [""]+primes

      # loop through each prime..
      primes.each do |row_prime|
        row = []
        row << row_prime # left hand field
        row+= primes.map{|p| row_prime * p }
        @array << row
      end
      @array
    end

    # the cell size should be 4 characters longer than the large number in the array
    # so it's always readable in the terminal
    def cell_size
      array.last.last.to_s.size + 4
    end

    # convert array into a 2 dimensional array of whitespace padded strings
    # with a line break at the end of each row
    def table
      array.map do |row|
        row.map do |cell|
          cell.to_s.ljust(cell_size, " ")
        end.join("")
      end.join("\n")
    end

  end
end