class User < ActiveRecord::Base
  attr_accessible :name, :password_hash, :salt, :instance_id
end
