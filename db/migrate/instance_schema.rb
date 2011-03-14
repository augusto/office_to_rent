class InstanceSchema < ActiveRecord::Migration
  def self.connection
    INS_DB.connection
  end
end
