class Deal < ActiveRecord::Base
  attr_accessible :amount, :description, :from, :to, :type, :user_id
end
