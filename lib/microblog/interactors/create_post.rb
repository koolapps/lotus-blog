require 'lotus/interactor'

class CreatePost
  include Lotus::Interactor

  def initialize(**params)
    @post = Post.new(params)
  end

  def call
    @post = PostRepository.persist(@post)
    fail! unless persisted?(@post)
  end

  private

  def persisted?(post)
    !!@post.id
  end
end
