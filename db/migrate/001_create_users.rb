class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :confirmation_token
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
