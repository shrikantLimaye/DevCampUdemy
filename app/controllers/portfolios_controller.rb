class PortfoliosController < ApplicationController
	layout "portfolio"
	
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
		3.times {@portfolio_item.technologies.build}
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_item_params)

		if @portfolio_item.save
			redirect_to portfolios_path, notice: 'Your Portfolio is live now'
		else
			render :new
		end
	end

	def edit
		@portfolio_item = Portfolio.find(params[:id])
	end

	def update
			@portfolio_item = Portfolio.find(params[:id])

	    	respond_to do |format|
	      if @portfolio_item.update(portfolio_item_params)
	        format.html { redirect_to portfolios_path, notice: "portfolio successfully updated." }
	      else
	        format.html { render :edit, status: :unprocessable_entity }
	      end
	    end
  	end

  	def show
  		@portfolio_item = Portfolio.find(params[:id])
  	end

  	def destroy
  		@portfolio_item = Portfolio.find(params[:id])
  		@portfolio_item.destroy
  		redirect_to portfolios_path, notice: "Portfolio has been destroyed"
  	end


	private
	def portfolio_item_params
		params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
	end

end
