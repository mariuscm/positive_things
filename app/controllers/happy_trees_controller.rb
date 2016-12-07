class HappyTreesController < ApplicationController
  before_action :set_happy_tree, only: [:show, :edit, :update, :destroy]

  # GET /happy_trees
  # GET /happy_trees.json
  def index
    @happy_trees = HappyTree.all
  end

  # GET /happy_trees/1
  # GET /happy_trees/1.json
  def show
  end

  # GET /happy_trees/new
  def new
    @happy_tree = HappyTree.new
  end

  # GET /happy_trees/1/edit
  def edit
  end

  # POST /happy_trees
  # POST /happy_trees.json
  def create
    @happy_tree = HappyTree.new(happy_tree_params)

    respond_to do |format|
      if @happy_tree.save
        format.html { redirect_to @happy_tree, notice: 'Happy tree was successfully created.' }
        format.json { render :show, status: :created, location: @happy_tree }
      else
        format.html { render :new }
        format.json { render json: @happy_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /happy_trees/1
  # PATCH/PUT /happy_trees/1.json
  def update
    respond_to do |format|
      if @happy_tree.update(happy_tree_params)
        format.html { redirect_to @happy_tree, notice: 'Happy tree was successfully updated.' }
        format.json { render :show, status: :ok, location: @happy_tree }
      else
        format.html { render :edit }
        format.json { render json: @happy_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /happy_trees/1
  # DELETE /happy_trees/1.json
  def destroy
    @happy_tree.destroy
    respond_to do |format|
      format.html { redirect_to happy_trees_url, notice: 'Happy tree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happy_tree
      @happy_tree = HappyTree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def happy_tree_params
      params.require(:happy_tree).permit(:color, :brush, :background, :desc)
    end
end
