class User < ActiveRecord::Base
  validates :nationality,presence:true
end
