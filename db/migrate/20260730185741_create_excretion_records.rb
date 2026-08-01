class CreateExcretionRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :excretion_records do |t|
      t.integer :number
      t.boolean :c_check
      t.boolean :b_check
      t.boolean :a_check
      t.string :sign1
      t.string :sign2

      t.timestamps
    end
  end
end
