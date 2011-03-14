class CreateUsers < ActiveRecord::Migration # MainSchema
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :salt
      t.integer :instance_id
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
