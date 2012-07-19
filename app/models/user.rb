class User < ActiveRecord::Base
  attr_accessible :display_order, :email, :login, :password_digest, :patron_id, :retired_date, :roles_mask
end
