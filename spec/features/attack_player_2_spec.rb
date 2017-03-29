require 'capybara/rspec'

feature 'Attack player 2' do
  scenario 'confirms attack on player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content "You attacked Will"
  end

  scenario 'takes 10HP off player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content "Will's HP: 90"
  end
end
