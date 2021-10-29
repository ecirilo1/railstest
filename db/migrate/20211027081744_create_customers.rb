class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :client_name
      t.string :teeptrak_id

      t.timestamps
    end
  end
end
