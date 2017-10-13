
feature 'enter names' do
  context 'homepage' do
    scenario 'Can enter a name for player 1 and player 2' do
      sign_in_and_play
      expect(page).to have_content('Welcome Alex and David to the game :)')
    end
  end
end
