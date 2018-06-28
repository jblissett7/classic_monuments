require 'rails_helper'

RSpec.describe Order, type: :model do
  
  let(:order) {create(:order) }

  it "Is valid with valid attributes" do
  	expect(order).to be_valid
  end

  it "is not valid without last name" do
  	order.last_name = nil
  	expect(order).to_not be_valid
  end

  it "is not valid without first name" do
  	order.first_name = nil
  	expect(order).to_not be_valid
  end

  it "is not valid without status" do
  	order.status = nil
  	expect(order).to_not be_valid
  end

  it "is not valid without cemetery" do
  	order.cemetery = nil
  	expect(order).to_not be_valid
  end

  it "is not valid without ordered_by" do
  	order.ordered_by = nil
  	expect(order).to_not be_valid
  end

  it "is not valid without address" do
  	order.address = nil
  	expect(order).to_not be_valid
  end

  it "is not valid without phone number" do
  	order.phone_number = nil
  	expect(order).to_not be_valid
  end

  it "is not valid without email" do
  	order.email = nil
  	expect(order).to_not be_valid
  end

end
