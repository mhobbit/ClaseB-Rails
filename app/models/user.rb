class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ROLES = %w[admin instructor banned]

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
