# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'the homepage', type: :feature do
  it 'has App title' do
    visit '/'

    # Shows the App title
    expect(page).to have_content 'Spitter'

    # Has a form for creating Spits
    expect(page).to have_selector('form') # TODO: ID

    spit_text = 'My first Spit'
    fill_in 'spit_body', with: spit_text

    click_button 'Spit'

    first_spit_body = find('.spit > p')
    expect(first_spit_body).to have_content spit_text
  end
end
