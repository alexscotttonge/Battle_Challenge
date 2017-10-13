
feature 'view hits on player2' do
  scenario 'Can view hit points on player 2' do
    sign_in_and_play
    expect(page).to have_content('Player 2 has loads of hit points')
  end
end
