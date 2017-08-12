require 'rails_helper'

feature "parking", :type => :feature do

  scenario "long-term parking" do
    user = User.create!( :email => "foobar@example.com", :password => "12345678")
    sign_in(user) # 这样就可以登入了


    visit "/"
    choose "长期费率" 


    click_button "开始计费"

    click_button "结束计费"

    expect(page).to have_content("¥12.00")
  end

end
