class DashboardsController < ApplicationController
  def index
    @articles = current_user.articles.order(created_at: :desc)
  end

  def create
    @article = Article.find(params[:article_id])
    @article.update(status: !@article.status)
    redirect_to dashboard_path
  end
end
