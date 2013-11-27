module Fctest
  class Prime

    def initialize(n)
      @n = n.to_i
    end

    def primes
      # return them if already calculated..
      return @primes if @primes

      @primes = []
      while @primes.size < @n
        # start at 2..
        current ||= 2
        # is current a prime?
        @primes << current unless Math.sqrt(current).floor.downto(2).map{|i| current%i==0 }.include?(true)
        # bump up current
        current += 1
      end
      @primes
    end

  end
end