require 'rails_helper'

RSpec.describe 'Adding product to favorites', type: :feature, js: true, driver: :selenium_chrome do
    scenario 'valid inputs' do
        visit root_path
        sign_up_with 'valid_email@example.com', 'password123'
        expect(page).to have_content('Favorites')
        add_new_product 'Samsung', 'Test', '1250'
        visit shops_path
        expect(page).to have_content('Samsung')
        click_on 'Add to Favorites'
        visit favorites_path
        expect(page).to have_content('Samsung')
    end

    def sign_up_with(email, password)
        visit new_user_registration_path
        fill_in 'Email', with: email
        fill_in 'Password', with: password
        fill_in 'Password confirmation', with: password
        click_button 'Sign up'
    end

    def add_new_product(name, description, price)
        visit products_path
        click_link 'New Product'
        fill_in 'Name', with: name
        fill_in 'Description', with: description
        fill_in 'Price', with: price
        click_button 'Create Product'
    end
end