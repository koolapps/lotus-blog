module Web::Controllers::Posts
  class Index
    include Web::Action
    expose :posts

    def call(params)
      @posts = PostRepository.ordered_by_created_at.all
    end
  end
end
