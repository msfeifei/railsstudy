require "rails_helper"

RSpec.feature 'User creates a person' do
    scenario 'they see person on the page' do
        visit new_person_path

        fill_in 'First name', with: 'Feifei'
        fill_in 'Last name', with: 'wang'
        fill_in 'Gender', with: 'Male'
        click_button 'Create Person'

        expect(page).to have_text("All People")
        expect(page).to have_text("wang")
        expect(page).to h有了，jave_text("Male")
    end
    scenario 'not see person on the page' do
        visit new_person_path

        fill_in 'First name', with: 'Feifei'
        fill_in 'Last name', with: ''
        fill_in 'Gender', with: 'Male'
        click_button 'Create Person'
       
        expect(page).to_not have_text("All People")
        expect(page).to have_text("1 error prohibited this article from being saved:")
        expect(page).to have_text("Last name can't be blank")
    end
    scenario 'not see person on the page' do
        visit new_person_path

        fill_in 'First name', with: ''
        fill_in 'Last name', with: 'wang'
        fill_in 'Gender', with: 'Male'
        click_button 'Create Person'
       
        expect(page).to have_text("1 error prohibited this article from being saved:")
        expect(page).to have_text("First name can't be blank")
    end
    scenario 'not see person on the page' do
        visit new_person_path

        fill_in 'First name', with: 'Feifei'
        fill_in 'Last name', with: 'wang'
        fill_in 'Gender', with: ''
        click_button 'Create Person'
       
        expect(page).to have_text("1 error prohibited this article from being saved:")
        expect(page).to have_text("Gender can't be blank")
    end
    scenario 'not see person on the page' do
        visit new_person_path

        fill_in 'First name', with: ''
        fill_in 'Last name', with: ''
        fill_in 'Gender', with: 'Male'
        click_button 'Create Person'
       
        expect(page).to have_text("2 errors prohibited this article from being saved:")
        expect(page).to have_text("First name can't be blank")
        expect(page).to have_text("Last name can't be blank")
    end
end

