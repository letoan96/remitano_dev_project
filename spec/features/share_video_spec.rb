describe "the sharing video process", :type => :feature do
  it "go to the sharing page", js: true do
    visit '/'
    fill_in 'email', with: 'user@example.com'
    fill_in 'password', with: 'password'  
    click_button 'Login/Register'
    wait_for_ajax

    click_link 'Share a movie'
    expect(page.current_path).to eq share_path
  end

  it "go to the sharing page", js: true do
    visit '/'
    fill_in 'email', with: 'user@example.com'
    fill_in 'password', with: 'password'  
    click_button 'Login/Register'
    wait_for_ajax

    click_link 'Share a movie'
    fill_in 'youtube_url', with: 'https://www.youtube.com/watch?v=fzQ6gRAEoy0'
    click_button 'Share'

    expect(page.current_path).to eq root_path
    expect(page).to have_content "Shared! We are reparing your video."
  end
end
