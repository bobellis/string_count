require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("string_count path", {:type => :feature}) do
  it("When a user enters a target word and words to check, we output the number of times the target word appears in the text") do
    visit('/')
    fill_in('target_word', :with => "circus")
    fill_in('words_to_check', :with => "The circus is a lot of fun. Go to the circus today!")
    click_button('Send')
    expect(page).to have_content(2)
  end
end
