# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'the homepage', type: :feature do
  it 'has App title' do
    visit '/'

    expect(page).to have_content 'Spitter'
  end
end
