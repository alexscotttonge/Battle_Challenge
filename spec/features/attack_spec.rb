
feature 'attack gameplay working' do
  scenario 'confirm player 1 has attacked player 2' do
    sign_in_and_play
    click_button ('Player 1 attack Player 2!')    
    expect(page).to have_content('You have boshed Player 2!')
  end
end
