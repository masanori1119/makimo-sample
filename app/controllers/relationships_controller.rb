class RelationshipsController < ApplicationController

    def create
    user = User.find(params[:following_id])
    current_user.follow(user)
    redirect_to user
  end

  def destroy
    user = Relationship.find(params[:id]).following
    current_user.unfollow(user)
    redirect_to user
  end


    private

    def create_params
        params.permit(:following_id).merge(follower_id: current_user.id)
    end

end
