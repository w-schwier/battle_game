def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: "Vivien"
  fill_in :player_2_name, with: "Will"
  click_button "Submit"
end
