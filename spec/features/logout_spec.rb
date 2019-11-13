describe "the signout process", :type => :feature do
  it "sign me out", js: true do
    visit '/'
    fill_in 'email', with: 'user@example.com'
    fill_in 'password', with: 'password'
    click_button 'Login/Register'
    wait_for_ajax

    click_button 'Logout'
    wait_for_ajax

    expect(page).to have_field('Email')
    expect(page).to have_field('Password')
    expect(page).to have_button('Login/Register')
  end
end
