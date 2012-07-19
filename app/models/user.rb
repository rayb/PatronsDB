class User < ActiveRecord::Base

  belongs_to :patron
  attr_accessible :display_order, :email, :login, :password_digest, :patron_id, :retired_date, :roles_mask
end
