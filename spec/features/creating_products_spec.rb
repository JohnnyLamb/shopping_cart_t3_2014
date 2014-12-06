require 'rails_helper'

feature 'Product Management' do

  scenario 'user creates a new product' do

    visit new_product_path

    fill_in 'Name', with: 'Apple'
    fill_in 'Description', with: 'A juicy apple'
    fill_in 'Image URL', with: 'apple.png'
    fill_in 'Price', with: '0.99'

    click_button 'Create Product'

    expect(page).to have_text('Product was successfully created')


  end

  scenario 'user edits existing product' do

    visit edit_product_path




  end



end

