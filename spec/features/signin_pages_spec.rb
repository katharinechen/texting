require 'rails_helper'

describe "the signin process" do 

   before :each do
    visit '/users/sign_in'
    user = create(:user)
  end

  it "signs a user in who users the right password" do 
    fill_in 'Email', :with => 'katharinechen.ny@gmail.com'
    fill_in 'Password', :with => '123456789'    
    click_button "Log in"
    expect(page).to have_content "Signed in successfully"
  end 

  it "gives a user an error who uses the wrong password" do 
    fill_in 'Email', :with => 'katharinechen.ny@gmail.com'
    fill_in 'Password', :with => 'wrongpassword'    
    click_button "Log in"
    expect(page).to have_content "Invalid email or password"
  end 
end 
