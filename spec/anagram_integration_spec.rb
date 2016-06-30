require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('processes the user entry and returns the anagrams') do
    visit('/')
    fill_in('word', :with => 'cat')
    fill_in('word_one', :with => 'tca')
    fill_in('word_two', :with => 'something')
    fill_in('word_three', :with => 'act')
    click_button('Submit')
    expect(page).to have_content('tca, act')
  end
end
