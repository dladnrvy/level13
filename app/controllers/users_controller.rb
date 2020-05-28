class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  # 메인
  def index
  end
  
  # 회원가입
  def sign_up
  end
  
  #로그인
  def login
  end
  
  # 로그인 확인
  def login_check
    
     user = User.find_by(user_id: params[:user_id])
     user_password = User.find_by(password: params[:password])
    
    # 아이디와 비밀번호확인
    if user && user_password
      log_in(user)
       redirect_to product_index_path
    else
      flash[:alert] = '아이디 또는 비밀번호가 틀립니다.';
      redirect_to user_login_path
    end
  end

def new
     new_user = User.new(
     user_id: params[:user_id],
     password: params[:password],
     name: params[:name],
     gender: params[:gender]
       )
    
         unless new_user.save
          redirect_to sign_up_path
        end
end

def destroy
   log_out
    redirect_to '/'
   end




end
