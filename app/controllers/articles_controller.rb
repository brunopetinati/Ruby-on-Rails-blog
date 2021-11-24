class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]    
    
    def index
        @articles = Articles.all
    end

    def show
        # @article = Articles.find(params[:id])
        # para que essa varíavel fique disponível global, @ para torná-la uma 
        # instance variable
    end

    def new
        # necessário iniciar instância de @article aqui, para que em create, no if no template
        # não gere erro ao carregar a página, por nenhum @article ter sido editado ainda
        @articles = Articles.new
    end


    # por algum motivo, def edit vem antes de def create
    def edit 
       # @article = Articles.find(params[:id])
    end

    def update
        # @article = Articles.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = 'Article was updated successfully.'
            redirect_to @article
        else
            render 'edit'
        end
    end

    def create 

        # def create é definido automaticamente como tipo POST na página de referência 
        # na qual se encontra

        @articles = Articles.new(article_params)
        # checar diferentes resultados com
        # render plain: @article.inspect => inspect retornará objeto legível
        # render plain: @article
        if @articles.save
            # se é possível salvar por passar nas validações, redireciona
            redirect_to article_path(@articles)
            # caso sucesso, helper notice dará mensagem
            flash[:notice] = 'Article was created successfully'
            # essa mensagem é editada em layouts/application.html.erb, porque ele aparece
            # em todos os lugares. A mensagem é exibida no topo de qualquer template
        else
            render 'new'
            # caso não, renderiza a new.form de novo
        end
        # mas essa linha acima pode ser apenas:
        # redirect_to @articles

        # articles.errors.full_messages => mostra todas as mensagens de erros nas validações

        # articles.errors.full_messages.each do |msg|
        # puts msg
        # end
    end
    
    def destroy 
        # @article = Articles.find(params[:id])
        @article.destroy
        redirect_to '/articles'
    end
    
    private

    def set_article
        @article = Articles.find(params[:id])
        # ao setar esse método privado, todos os @article acima podem ser removidos, por conta 
        # do before_action
    end

    def article_params
        params.require(:articles).permit(:title, :description)
    end

end