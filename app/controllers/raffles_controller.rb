class RafflesController < ApplicationController
  # GET /raffles
  # GET /raffles.json
  def index
    @raffles = Raffle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @raffles }
    end
  end

  # GET /raffles/1
  # GET /raffles/1.json
  def show
    @raffle = Raffle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @raffle }
    end
  end

  # GET /raffles/new
  # GET /raffles/new.json
  def new
    @raffle = Raffle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raffle }
    end
  end

  # GET /raffles/1/edit
  def edit
    @raffle = Raffle.find(params[:id])
  end

  # POST /raffles
  # POST /raffles.json
  def create
    @raffle = Raffle.new(params[:raffle])

    respond_to do |format|
      if @raffle.save
        format.html { redirect_to @raffle, notice: 'Raffle was successfully created.' }
        format.json { render json: @raffle, status: :created, location: @raffle }
      else
        format.html { render action: "new" }
        format.json { render json: @raffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /raffles/1
  # PUT /raffles/1.json
  def update
    @raffle = Raffle.find(params[:id])

    respond_to do |format|
      if @raffle.update_attributes(params[:raffle])
        format.html { redirect_to @raffle, notice: 'Raffle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raffles/1
  # DELETE /raffles/1.json
  def destroy
    @raffle = Raffle.find(params[:id])
    @raffle.destroy

    respond_to do |format|
      format.html { redirect_to raffles_url }
      format.json { head :no_content }
    end
  end
end
