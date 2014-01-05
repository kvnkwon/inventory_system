require 'spec_helper'

feature 'User creates an item' do

  it "with valid attributes" do
    visit new_inventory_path
    fill_in "Title", with: "Steak"
    fill_in "Description", with: "Big and juicy"
    fill_in "Quantity", with: "2"
    click_on "Create Inventory"

    expect(page).to have_content "Title"
  end

  it "with invalid attributes and sees errors" do
    visit new_inventory_path
    click_on "Create Inventory"
    expect(page).to have_content "Cannot create inventory"
  end





end