feature 'Random hitpoints' do
  scenario 'random number showing how many hitpoints at stake on play page' do
    sign_in_and_play
    expect(find('span.random_number').text.to_i).to be_between(1, 30)
  end
end
