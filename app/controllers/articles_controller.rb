class ArticlesController < ApplicationController
  before_action :select_category, :select_company, only: [:new, :create, :edit, :update, :confirm]

  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def confirm
    @article = current_user.articles.build(article_params)
    render :new if @article.invalid?
  end

  def update
    article = Article.find(params[:id])
    if article.update(article_params)
      flash[:info] = "Article updated successfully"
      redirect_to articles_path
    else
      render :edit
    end
  end

  def create
    @article = current_user.articles.new(article_params)
    @article.status = false
    if @article.save
      flash[:info] = "Article created successfully"
      redirect_to articles_path
    else
      render new_article_path
    end
  end

  private
  def select_category
    @select_category = []
    Category.all.order(name: :asc).each do |cat|
      @select_category << [cat.name, cat.id]
    end
  end

  def select_company
    @select_company = []
    Company.all.order(name: :asc).each do |comp|
      @select_company << [comp.name, comp.id]
    end
  end

  def article_params
    params.require(:article).permit(:category_id, :company_id, :message)
  end
end
