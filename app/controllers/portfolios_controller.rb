class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: %i[ show edit update destroy]
	layout 'portfolio'
	access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

	
	def index
		@portfolio_items = Portfolio.by_position
	end

	def sort
		params[:order].each do |key, value|
			Portfolio.find(value[:id]).update(position: value[:position])
		end

		render nothing: true
	end

	def angular
		@angular_portfolio_item = Portfolio.angular
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def create

	    @portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully created." }
	      else
	        format.html { render :new, status: :unprocessable_entity }
	      end
	    end
	end

	def edit
	end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy

    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Record was removed." }
    end

  end

  private

  def portfolio_params
		params.require(:portfolio).permit(:title,
			                                :subtitle,
			                                :body,
			                                :thumb_image,
																			:main_image,
			                                technologies_attributes: [:id, :name, :_destroy]
			                                )
  end


  def set_portfolio_item
  	@portfolio_item = Portfolio.find(params[:id])
  end

end
