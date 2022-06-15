class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :blog]

  def blog

  end

  def blog
  end

  def about
    render 'pages/blog/about'
  end
end
