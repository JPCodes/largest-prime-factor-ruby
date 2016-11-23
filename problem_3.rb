define_method(:find_primes) do |upper_limit|
  original_num = self

  # Define an array of primes
  primes_array = upper_limit.create_primes_array()

  # Stores prime factors that divide into our original number
  prime_factors = []

  # Determines which prime factors to store into the prime factors array
  primes_array.each() do |prime|
    if original_num % prime === 0
      prime_factors.push(prime)
    end
  end
  prime_factors[-1]
end

define_method(:create_primes_array) do
  # Create primes_array here for storage
  primes_array = []

  # Determine prime numbers here
    # Sieve of Eratothenes, ancient algorithm used to find prime numbers
  (1..self).each do |num|
    if num % 2 != 0 or num % 3 != 0 or num % 5 != 0
      primes_array.push(num)
    end
  end
  primes_array
end

# Answer: 6857 is the largest prime factor of 600,851,475,143
puts 600851475143.find_primes(10000)
