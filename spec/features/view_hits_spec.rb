
feature 'view hits on player2' do
  scenario 'Can view hit points on player 2' do
    visit ('/')
    fill_in :name1, with: 'Alex'
    fill_in :name2, with: 'David'
    click_button "Submit"
    expect(page).to have_content('Player 2 has loads of hit points')
  end
end
