class UsersController < ApplicationController
  before_action :authenticate, except: [:show]
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :set_default_locale, only: [:show]
  # GET /users or /users.json

  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private


  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == 'admindayn' && password == 'fisting'
    end
  end
    def set_default_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:date, :name, :family_name, :patronymic, :birthday, :url, :local)
    end
end
