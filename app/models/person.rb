# This is the protected resource that shouldn't leak between DB instances
class Person < ActiveRecord::Base
  attr_accessible :name, :email
end
