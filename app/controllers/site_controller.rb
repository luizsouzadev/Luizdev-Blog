class SiteController < ApplicationController

def index
    @postagens = Postagem.all
end

def single_postagem
    @postagem = Postagem.find(params[:id])
end

end
