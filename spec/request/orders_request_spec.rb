# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrdersController, type: :request do
  let(:order) { create(:order) }
  it 'gets #new' do
    get new_order_path
    expect(response).to have_http_status(200)

    post '/orders', params: { order: attributes_for(:order) }
    expect(response).to redirect_to(orders_path)
  end

  it 'gets #index' do
    get orders_path
    expect(response).to have_http_status(200)
  end

  it 'gets #show' do
    get order_path(order)
    expect(response).to have_http_status(200)
  end

  it 'gets #edit' do
    get edit_order_path(order)
    expect(response).to have_http_status(200)
  end

end
