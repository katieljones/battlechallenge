feature 'test homepage displays "Testing infrastructure working!"' do
  scenario "arriving on homepage" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end