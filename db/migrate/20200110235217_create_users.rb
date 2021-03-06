class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :email
      t.text :password_digest
      t.boolean :admin
      t.text :image

      t.timestamps
    end
  end
end
