class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :name, null: false
      t.string :email,              null: false, default: ""
      t.text :content, null: false
      t.timestamps
    end
  end
end
