require('rspec')
require('largest_prime')
require('pry')

describe('Fixnum#largest_prime') do

  it('Returns largest prime number for the number 13195') do
    expect((13195).find_primes(5000)).to(eq(29))
  end

  it('Returns largest prime number for the number 600851475143') do
    expect((600851475143).find_primes(10000)).to(eq(6857))
  end

end
