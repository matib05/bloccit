module PostsHelper
    
    def is_user_authorized_for_post?(post)
        current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
    end
    
end
