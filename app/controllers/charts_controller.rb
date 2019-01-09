class ChartsController < ApplicationController
    def create 
        @category = Category.find(params[:category_id])
        @chart = @category.charts.create(comment_params)
        redirect_to category_path(@category)
    end 

    def destroy 
        @category = Category.find(params[:category_id])
        @chart = @category.charts.find(params[:id])
        @chart.destroy
        redirect_to category_path(@category)
        end 

    private 
    def comment_params
        params.require(:chart).permit(:blindrange, :situation, :opponent, :image )
    end 


end
