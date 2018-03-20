class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end
  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolios_path, notice: 'Your portfolio is now live'
    else
      render 'new'
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path, notice: 'Your portfolio was successfully updated'
    else
      render 'new'
    end
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end

end
