class RelationshipsController < ApplicationController
#before_action :set_user

   def follow
   	current_user.follow(params[:id])
   	redirect_to request.referrer
   end

   def unfollow
   	current_user.unfollow(params[:id])
   	redirect_to request.referrer
   end

   def follower
   	@user = User.find(params[:user_id])
   	@followers = @user.following_user
   end

   def followed
   	@user = User.find(params[:user_id])
   	@followed = @user.follower_user
   end
 #   def create
 #   	#@user = User.find(params[:follow_id])
 #   	following = current_user.follow(user)
 #   	if following.save
 #   		flash[:success] = 'ユーザーをフォローしました'
 #   		redirect_to request.referrer
 #   	else
 #   		flash.now[:alert] = 'ユーザーのフォローに失敗しました'
 #   		redirect_to request.referrer
 #   		end
 #   end

 #   def destroy
 #   	#@user = User.find(params[:follow_id])
 #   	following = current_user.unfollow(user)
 #   	if following.destroy
 #   		flash[:success] = 'ユーザーのフォローを解除しました'
 #   		redirect_to request.referrer
 #   	else
 #   		flash[:alert] = 'ユーザーのフォロー解除に失敗しました'
 #   		redirect_to request.referrer
	# 	end
	# end

private
	# def
	# 	@user = User.find_by(params[:relationship][:follow_id])
	# end
end
