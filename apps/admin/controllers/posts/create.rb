module Admin::Controllers::Posts
  class Create
    include Admin::Action

    def call(params)
      CreatePost.new(post_params).call
      redirect_to '/admin/posts'
    end

    private

    def post_params
      params[:post]
    end
  end
end
