module Api::V1
  require "bcrypt"
  class UsersController < ApisController
    def create
      email = params[:email]
      password = params[:password]
      user = User.find_by_email(email)
      if !user.nil?
        user_pass = BCrypt::Password.new(user.encrypted_password)
        if user_pass == password
          render json: {status: 200, data: user}
        else
          render json: {data: 402}
        end
      else
        render json: {data: 404}
      end
    end
  end
end
