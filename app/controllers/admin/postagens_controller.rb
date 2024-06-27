class Admin::PostagensController < AdminController
  before_action :set_postagem, only: %i[ show edit update destroy ]

  # GET /postagens or /postagens.json
  def index
    @postagens = Postagem.all
  end

  # GET /postagens/1 or /postagens/1.json
  def show;end

  # GET /postagens/new
  def new
    @postagem = Postagem.new
  end

  # GET /postagens/1/edit
  def edit
  end

  # POST /postagens or /postagens.json
  def create
    @postagem = Postagem.new(postagem_params)

    respond_to do |format|
      if @postagem.save
        format.html { redirect_to admin_postagem_url(@postagem), notice: "Postagem Criada." }
        format.json { render :show, status: :created, location: @postagem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postagens/1 or /postagens/1.json
  def update
    respond_to do |format|
    if @postagem.update(postagem_params)
        format.html { redirect_to admin_postagem_url(@postagem), notice: "Postagem Atualizada" }
        format.json { render :show, status: :ok, location: @postagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postagens/1 or /postagens/1.json
  def destroy
    @postagem.destroy!
    respond_to do |format|
      format.html { redirect_to admin_postagens_url, notice: "Postagem Deletada" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postagem
      @postagem = Postagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postagem_params
      params.require(:postagem).permit(:titulo, :data, :conteudo)
    end
end
