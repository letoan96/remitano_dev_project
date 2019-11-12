describe "the signin process", :type => :feature do
 it "has email, password input fields and submit button" do
   visit '/'
   expect(page).to have_field('Email')
   expect(page).to have_field('Password')
   expect(page).to have_button('Login/Register')
 end

 it "will sign me in", js: true do
   visit '/'
     fill_in 'email', with: 'user@example.com'
     fill_in 'password', with: 'password'
   click_button 'Login/Register'
   expect(page).to have_text('Welcome user@example.com')
   expect(page).to have_button('Logout')
   expect(page).to have_button('Share a movie')
 end

 it "won't sign me in if email is not valid format", js: true do
   visit '/'
     fill_in 'email', with: 'userexample.com'
     fill_in 'password', with: 'password'
   click_button 'Login/Register'
   expect(page).not_to have_text('Welcome user@example.com')
   expect(page).not_to have_button('Logout')
   expect(page).not_to have_button('Share a movie')
 end

 it "won't sign me in if password is blank", js: true do
   visit '/'
     fill_in 'email', with: 'userexample.com'
     fill_in 'password', with: ''
   click_button 'Login/Register'
   expect(page).not_to have_text('Welcome user@example.com')
   expect(page).not_to have_button('Logout')
   expect(page).not_to have_button('Share a movie')
 end
end
