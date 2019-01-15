class ChartsController < ApplicationController
    def create 
        @category = Category.find(params[:category_id])
        @chart = @category.charts.create(comment_params)
        @errors_messages = @chart.errors.messages       
        full_error_message = ""
        @errors_messages.each {|key, value| full_error_message = "#{key} " + value[0].to_s}
         if @errors_messages.any? 
            flash[:notice] ='ERROR: Chart was not created because ' + full_error_message.to_s
         end 
        redirect_to category_path(@category)
    end 

    def destroy 
        @category = Category.find(params[:category_id])
        @chart = @category.charts.find(params[:id])
        @chart.destroy
        redirect_to category_path(@category)
    end 

    def edit 
        @category = Category.find(params[:category_id])
        @chart = Chart.find(params[:id])
    end 

    def update
        @category = Category.find(params[:category_id])
        @chart = Chart.find(params[:id])
        @chart.update_attributes(comment_params)
        redirect_to category_path(@category)
    end 

    def show 
        @category = Category.find(params[:category_id])
        @chart = Chart.find(params[:id])
    end 

    private 
    def comment_params
        params.require(:chart).permit(:blindrange, :situation, :opponent, :image )
    end 


end
