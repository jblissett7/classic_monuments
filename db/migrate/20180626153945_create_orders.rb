class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.string :last_name
    	t.string :first_name
    	t.string :status
    	t.string :monument
    	t.boolean :monument_ordered?
    	t.string :cemetery
    	t.date :date_ordered
    	t.date :date_set
    	t.string :ordered_by
    	t.string :address
    	t.string :phone_number
    	t.string :email
    	t.monetize :total_fees
    	t.monetize :balance_due 

      t.timestamps
    end
  end
end
