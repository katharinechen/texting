require 'rails_helper'

describe "the signin process" do 

  it "signs a user in who users the right password" do 
    visit '/users/sign_in'
    user = create(:user)
    fill_in 'Email', :with => 'katharinechen.ny@gmail.com'
    fill_in 'Password', :with => '123456789'    
    click_button "Log in"
    page.should have_content "Signed in successfully"
  end 

  # it "gives a user an error who uses the wrong password" do 

  # end 


end 
