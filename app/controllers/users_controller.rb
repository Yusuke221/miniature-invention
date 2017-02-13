class UsersController < ApplicationController
  before_action :set_user, only: [:result, :test, :update]

  # GET /users
  # GET /users.json
  # GET /users/1
  # GET /users/1.json
  def index
    @users = User.all
    @users = User.select('nationality, AVG(point) AS avg_point').group(:nationality)
  end
  def result
    @user.point = 0
    if @user.ten == 7
      @user.point += 5
    end
    if @user.first == 64
      @user.point += 5
    end
    if @user.twelve == 36
      @user.point += 5
    end
    if @user.second == 28
      @user.point += 5
    end
    if @user.third ==  20
      @user.point += 5
    end
    if @user.eleven == 2
      @user.point += 5
    end
    if @user.fourth == 1
      @user.point += 5
    end
    if @user.fifth == 4
      @user.point += 5
    end
    if @user.sixteen == 4
      @user.point += 5
    end
    if @user.seventeen == 1
      @user.point += 5
    end
    if @user.fourteen == 11
      @user.point += 5
    end
    if @user.thirteen == 56
      @user.point += 5
    end
    if @user.seventh == 46
      @user.point += 5
    end
    if @user.fifteen == 5
      @user.point += 5
    end
    if @user.eighth == 12
      @user.point += 5
    end
    if @user.ninth == 2
      @user.point += 5
    end
    @user.point += 60
    @user.save
    @average = User.where(nationality: @user.nationality ).average(:point)
    @allaverage = User.all.average(:point)
    @users = User.select('nationality, AVG(point) AS avg_point').group(:nationality)
  end



  # GET /users/new
  def new
    @user = User.new
    @users = User.select('nationality, AVG(point) AS avg_point').group(:nationality)
  end

  # GET /users/1/edit
  def test
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to test_user_path(@user) }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to new_user_path, notice:'Please select your country' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :nationality, :point, :first, :second, :third, :fourth, :fifth, :six, :seventh, :eighth, :ninth, :ten, :eleven, :twelve, :thirteen, :fourteen, :fifteen, :sixteen, :seventeen)
    end
end
