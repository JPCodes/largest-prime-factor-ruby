require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the largest primes path', {:type => :feature}) do

  it('processes the user entry and returns the largest prime number') do
    visit('/')
    fill_in('first_num', :with => 13195)
    fill_in('second_num', :with => 5000)
    click_button('Find Primes')
    expect(page).to have_content(29)
  end

  it('processes the user entry and returns the largest prime number') do
    visit('/')
    fill_in('first_num', :with => 600851475143)
    fill_in('second_num', :with => 10000)
    click_button('Find Primes')
    expect(page).to have_content(6857)
  end

end
