# frozen_string_literal: true

# Users controller
class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  after_action :verify_authorized, except: [:index, :dashboard, :execute]
  after_action :verify_policy_scoped, only: :index

  def index
    @users = policy_scope User.all
  end

  def show; end

  def edit; end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to redirect_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def dashboard
    if current_user
      @user = current_user
      render 'edit'
    else
      redirect_to root_path
    end
  end

  private

  def redirect_path
    if current_user.admin?
      users_path
    else
      dashboard_path
    end
  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(policy(User).permitted_attributes)
  end
end
