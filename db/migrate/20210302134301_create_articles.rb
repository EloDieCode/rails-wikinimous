class CreateArticles < ActiveRecord::Migration[6.0]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def change
    create_table :articles do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def show
  end


  private
  def set_article
    @article = Article.find(params[:id])
  end

end
