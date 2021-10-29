class CreateReplacements < ActiveRecord::Migration[6.0]
  def change
    create_table :replacements do |t|
      t.references :customer, null: false, foreign_key: true
      t.text :description
      t.text :return_content
      t.string :tablet_number
      t.string :internal_message
      t.string :received_date
      t.string :received_tracking
      t.boolean :tested
      t.string :replacement_number
      t.string :to_bill
      t.string :contact_client
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.string :contact_phone
      t.integer :owner_id, foreign_key: false

      t.timestamps
    end
  end
end
