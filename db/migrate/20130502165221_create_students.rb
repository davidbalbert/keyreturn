class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.boolean :returned_key
      t.boolean :returned_card
      t.string :card_id

      t.timestamps
    end
  end
end
