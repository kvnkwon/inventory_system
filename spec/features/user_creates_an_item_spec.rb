require 'spec_helper'

feature 'User creates an item' do

  it "with valid attributes" do
    visit new_inventory_path
  end

  it "with invalid attributes and sees errors" do
    visit new_inventory_path
  end





end