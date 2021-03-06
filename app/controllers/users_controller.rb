class UsersController < ApplicationController
  before_action :set_user, only: [:collectives, :show]

  def collectives
    @collectives = @user.collectives
  end

  def show
    @collectives = @user.collectives[0...3]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end
