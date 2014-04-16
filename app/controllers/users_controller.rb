class UsersController < Clearance::UsersController
  def create
    @user = User.new(user_params)

    if @user.save
      sign_in @user
      redirect_to :root
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = find_user
    @department = @user.department
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :department_id)
  end

  def find_user
    User.find(params[:id])
  end
end
