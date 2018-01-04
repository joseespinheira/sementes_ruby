class UsersController < ApplicationController
  
  before_action :authorize, except: [:new, :create]
  before_action :correct_user?, only: [:edit, :update, :destroy]
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  # Criar uma conta:
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "Usuário foi criado com sucesso!"
      #tire o método de comentário quando criar o helper.
      #Usuário depois de cadastrar-se acessa o sistema automaticamente
      #sign_in(@user)
    else 
      render action: :new
    end
  end
  
  # Edita a conta:
  def edit
    @user = User.find(params[:id]) 
  end
  
  # Atualizar Conta:
  def update
    @user = User.find(params[:id]) 
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render action: :edit
    end
  end
  
  # Deletar conta:
  # Somente o proprio usuario pode excluir a conta
  def destroy
    @user = User.find(params[:id]) 
    @user.destroy
    sign_out
    redirect_to root_path
  end
  
  private
  def user_params
    params.require(:user).permit(:nome, :email, :password, :password_confirmation)
  end

end