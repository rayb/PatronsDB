class PromotionTypesController < ApplicationController
  # GET /promotion_types
  # GET /promotion_types.json
  def index
    @promotion_types = PromotionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @promotion_types }
    end
  end

  # GET /promotion_types/1
  # GET /promotion_types/1.json
  def show
    @promotion_type = PromotionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @promotion_type }
    end
  end

  # GET /promotion_types/new
  # GET /promotion_types/new.json
  def new
    @promotion_type = PromotionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @promotion_type }
    end
  end

  # GET /promotion_types/1/edit
  def edit
    @promotion_type = PromotionType.find(params[:id])
  end

  # POST /promotion_types
  # POST /promotion_types.json
  def create
    @promotion_type = PromotionType.new(params[:promotion_type])

    respond_to do |format|
      if @promotion_type.save
        format.html { redirect_to @promotion_type, notice: 'Promotion type was successfully created.' }
        format.json { render json: @promotion_type, status: :created, location: @promotion_type }
      else
        format.html { render action: "new" }
        format.json { render json: @promotion_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /promotion_types/1
  # PUT /promotion_types/1.json
  def update
    @promotion_type = PromotionType.find(params[:id])

    respond_to do |format|
      if @promotion_type.update_attributes(params[:promotion_type])
        format.html { redirect_to @promotion_type, notice: 'Promotion type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @promotion_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotion_types/1
  # DELETE /promotion_types/1.json
  def destroy
    @promotion_type = PromotionType.find(params[:id])
    @promotion_type.destroy

    respond_to do |format|
      format.html { redirect_to promotion_types_url }
      format.json { head :no_content }
    end
  end
end
