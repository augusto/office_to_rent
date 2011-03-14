class CreateInstances < ActiveRecord::Migration # MainSchema
  def self.up
    create_table :instances do |t|
      t.string :name
      t.string :url_token
      t.timestamps
    end
  end

  def self.down
    drop_table :instances
  end
end
