require ('capybara/rspec')
require ('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the allergy path', {:type => :feature}) do
  it ('Takes user input number and returns corresponding allergies') do
    visit('/')
    fill_in('number', :with => '129')
    click_button('Submit!')
    expect(page).to have_content(["cats", "eggs"])
  end
end
