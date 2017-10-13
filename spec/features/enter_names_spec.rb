
feature 'enter names' do
      context 'homepage' do
        before(:each) do
        visit('/')
    end
      scenario 'Can enter a name for player 1 and player 2' do
        fill_in :name1, with: 'Alex'
        fill_in :name2, with: 'David'
        click_button "Submit"
      expect(page).to have_content("Welcome Alex and David to the game :)")
      end
    end
end
