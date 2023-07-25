class CreateBankDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_details do |t|
      t.string :bank_name
      t.integer :account_number
      t.integer :ifsc_code
      t.references :accountable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
