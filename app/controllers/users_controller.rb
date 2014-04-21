class UsersController < Clearance::UsersController

  def index
    @users = User.all
  end

  def show
    @user = find_user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in @user
      redirect_to :root
    else
      render :new
    end
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    if @user.update(user_params)
      redirect_to [@user, :profile]
    else
      render :edit
    end
  end

  def destroy
    user = find_user
    user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :department_id,
      :office_branch_id,
      :job_title_users,
      :job_titles
      )
  end

  def find_user
    User.find(params[:id])
  end
end
