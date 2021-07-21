module PostsHelper
    def author_id_field(post)
        if post.author.nil?
            select_tag "post[author_id]", options_for_collection_select(Author.all, :id, :name)
        else
            hidden_field_tag "post[author_id]", post.author_id
        end
    end
  
end
