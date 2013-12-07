module UsersHelper
    def find_posts_for_user(user_id)
     User.find(user_id).posts.collect{|p| [p.post_name, p.id]}
    end

    def find_comments_for_post(post_id)
      Post.find(post_id).comments.collect{|c| [c.content]}
    end
end
