# frozen_string_literal: true

# Monument Model
class Monument < ApplicationRecord
  validates_presence_of :monument_type, :length, :width,
                        :height, :color, :price_currency

  def dimensions
    "#{length} x #{width} x #{height}"
  end
end
