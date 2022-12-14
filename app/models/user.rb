class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  enum type: [:customer, :owner]
        #  after_initialize :set_default_role, :if => :new_record?
        #  def set_default_role
        #    self.role ||= :user
        #  end
        has_many :shops
end
