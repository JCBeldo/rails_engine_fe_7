require 'rails_helper'

RSpec.describe 'merchants index page', type: :feature do
  it 'lists the merchants by name as links' do
    visit merchants_path
    
    expect(page).to have_link('Schroeder-Jerde')
    expect(page).to_not have_link('Target')

    click_link('Schroeder-Jerde')
    expect(current_path).to eq(merchant_path(1))
  end

  it 'links to a merchant show page and shows the items that that merchant sells' do
    visit merchant_path(1)

    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Item Expedita Aliquam')
    expect(page).to have_content('Item Provident At')
  end
end

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.