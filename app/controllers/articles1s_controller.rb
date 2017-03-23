class Articles1sController < ApplicationController
    
    def new
        @articles1 = Articles1.new
    end
    def create
       #render plain: parama[:article].inspect
       @articles1 = Articles1.new(articles1_params)
       
        if @articles1.save
           flash[:notice] = "Article was successfully created"
           redirect_to articles1_path(@articles1)
        else
            render 'new'
        end
    end
    def show
        @articles1 = Articles1.find(params[:id])
    end
    
    
    private
        def articles1_params
           params.require(:articles1).permit(:title, :description) 
        end
end