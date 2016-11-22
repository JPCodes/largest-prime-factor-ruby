define_method(:find_primes) do
  original_num = self
  primes_array = [2, 3, 5, 7, 11, 13, 17, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 6857]
  prime_factors = []

  primes_array.each() do |prime|
    if original_num % prime === 0
      prime_factors.push(prime)
    end
  end
  prime_factors
end


puts 600851475143.find_primes()
