class MainSchema < ActiveRecord::Migration
  def self.connection
    MS_DB.connection
  end
end
