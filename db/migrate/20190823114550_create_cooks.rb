class CreateCooks < ActiveRecord::Migration[5.2]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_cook

      t.timestamps
    end
  end
end
