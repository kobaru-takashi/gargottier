class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.datetime :date,null: false
      t.integer :count, default: 8
      t.timestamps
    end
  end
end
