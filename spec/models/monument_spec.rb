# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Monument, type: :model do
  let(:monument) { create(:monument) }

  it 'is valid with valid attributes' do
    expect(monument).to be_valid
  end

  it 'is not valid without monument type' do
    monument.monument_type = nil
    expect(monument).to_not be_valid
  end

  it 'is not valid without length' do
    monument.length = nil
    expect(monument).to_not be_valid
  end

  it 'is not valid without width' do
    monument.width = nil
    expect(monument).to_not be_valid
  end

  it 'is not valid without height' do
    monument.height = nil
    expect(monument).to_not be_valid
  end

  it 'is not valid without color' do
    monument.color = nil
    expect(monument).to_not be_valid
  end

  it 'is not valid without price currency' do
    monument.price_currency = nil
    expect(monument).to_not be_valid
  end
end
