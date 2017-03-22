class Articles1Controller < ApplicationController
    
    def new
        @articles1 = Articles1.new
    end
    def create
       #render plain: parama[:article].inspect
       @articles1 = Articles1.new(articles1_params)
       @articles1.save
       redirect_to articles1_show(@article)
    end
    
    
    
    private
        def articles1_params
           params.require(:articles1).permit(:title, :description) 
        end
end