class AudirtCodesController < ApplicationController
  # GET /audirt_codes
  # GET /audirt_codes.json
  def index
    @audirt_codes = AudirtCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audirt_codes }
    end
  end

  # GET /audirt_codes/1
  # GET /audirt_codes/1.json
  def show
    @audirt_code = AudirtCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @audirt_code }
    end
  end

  # GET /audirt_codes/new
  # GET /audirt_codes/new.json
  def new
    @audirt_code = AudirtCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @audirt_code }
    end
  end

  # GET /audirt_codes/1/edit
  def edit
    @audirt_code = AudirtCode.find(params[:id])
  end

  # POST /audirt_codes
  # POST /audirt_codes.json
  def create
    @audirt_code = AudirtCode.new(params[:audirt_code])

    respond_to do |format|
      if @audirt_code.save
        format.html { redirect_to @audirt_code, notice: 'Audirt code was successfully created.' }
        format.json { render json: @audirt_code, status: :created, location: @audirt_code }
      else
        format.html { render action: "new" }
        format.json { render json: @audirt_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /audirt_codes/1
  # PUT /audirt_codes/1.json
  def update
    @audirt_code = AudirtCode.find(params[:id])

    respond_to do |format|
      if @audirt_code.update_attributes(params[:audirt_code])
        format.html { redirect_to @audirt_code, notice: 'Audirt code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @audirt_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audirt_codes/1
  # DELETE /audirt_codes/1.json
  def destroy
    @audirt_code = AudirtCode.find(params[:id])
    @audirt_code.destroy

    respond_to do |format|
      format.html { redirect_to audirt_codes_url }
      format.json { head :no_content }
    end
  end
end
