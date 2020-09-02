class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :reservation_time, null: false
      t.integer :number_of_people, null: false
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana, null: false
      t.integer :phone_number, null: false
      t.string :email,              null: false, default: ""
      t.text :request
      t.references :event, null: false
      t.timestamps
    end
  end
end
