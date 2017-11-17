module UserHelper
  def follow_user(user)
    if current_user.following?(user)
      link_to "Unfollow", unfollow_user_path(user), method: :delete
    else
      link_to "Follow", follow_user_path(user), method: :post
    end
  end
end
