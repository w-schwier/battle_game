require 'capybara/rspec'

feature "view hit points" do
  scenario "player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Will's HP: 100")
  end
end
