# feature 'test homepage displays "Testing infrastructure working!"' do
#   scenario "arriving on homepage" do
#     visit '/'
#     expect(page).to have_content('Testing infrastructure working!')
#   end
# end
feature 'Enter names' do
  scenario 'players enter name and it returns input on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Katie vs. James'
  end
  scenario 'can see player 2 hp' do
    sign_in_and_play
    expect(page).to have_content 'James: HP100'
  end
  scenario 'clicks button to attack player 2' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'You attacked James'
  end
end
