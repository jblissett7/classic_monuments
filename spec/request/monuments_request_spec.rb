# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MonumentsController, type: :request do
  let(:monument) { create(:monument) }
  it 'gets #new' do
    get new_monument_path
    expect(response).to have_http_status(200)
  end

  it 'gets #index' do
    get monuments_path
    expect(response).to have_http_status(200)
  end

  it 'gets #show' do
    get monument_path(monument)
    expect(response).to have_http_status(200)
  end

  it 'gets #edit' do
    get edit_monument_path(monument)
    expect(response).to have_http_status(200)
  end
end
