class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :news

  def forem_name
  	name
  end

  def forem_email
  	email_address
  end

  def is_admin?
    admin
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :admin)
    end
end
