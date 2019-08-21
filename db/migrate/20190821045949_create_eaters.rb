class CreateEaters < ActiveRecord::Migration[5.2]
  def change
    create_table :eaters do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :password_digest
      t.boolean :areucook

      t.timestamps
    end
  end
end
