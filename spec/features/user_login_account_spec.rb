require "rails_helper"

RSpec.feature 'user login in' do
    scenario 'they see Signed in successfully.' do
        visit "/users/sign_in/"

        fill_in 'Email', with: '09@qq.com'
        fill_in 'Password', with: '111111'
        click_button 'Log in'

        expect(page).to have_text("Signed in successfully.")

    end
end