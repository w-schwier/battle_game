require 'capybara/rspec'

feature 'Add player names' do
  scenario 'Players enter names then see them' do
    sign_in_and_play
    expect(page).to have_content "Vivien vs Will"
  end
end
