# frozen_string_literal: true

# The Order class is responsible for handling order data
# and validating attr fields
class Order < ApplicationRecord
  validates_presence_of :last_name, :first_name, :status,
                        :cemetery, :ordered_by, :address,
                        :phone_number, :email
  has_one :monument
end
