class GiftcardsController < ApplicationController
  before_action :set_giftcard, only: %i[ show edit update destroy adminindex ]

  # GET /giftcards or /giftcards.json
  def index
    @giftcards = Giftcard.all
    @total_amt = Giftcard.sum(:gift_card_value)
    @total_com = Giftcard.sum(:commission)
  end
  # GET /giftcards/1 or /giftcards/1.json
  def show
  end

  # GET /giftcards/new
  def new
    @giftcard = Giftcard.new
  end
  # GET /giftcards/1/edit
  def edit
  end

  # POST /giftcards or /giftcards.json
  def create
    @giftcard = Giftcard.new(giftcard_params)

    respond_to do |format|
      if @giftcard.save
        format.html { redirect_to giftcard_url(@giftcard), notice: "Giftcard was successfully created." }
        format.json { render :show, status: :created, location: @giftcard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @giftcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giftcards/1 or /giftcards/1.json
  def update
    respond_to do |format|
      if @giftcard.update(giftcard_params)
        format.html { redirect_to giftcard_url(@giftcard), notice: "Giftcard was successfully updated." }
        format.json { render :show, status: :ok, location: @giftcard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @giftcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giftcards/1 or /giftcards/1.json
  def destroy
    @giftcard.destroy

    respond_to do |format|
      format.html { redirect_to giftcards_url, notice: "Giftcard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giftcard
      @giftcard = Giftcard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def giftcard_params
      params.require(:giftcard).permit(:first_name, :last_name, :gift_card_value, :commission, :mob_no, :address, :order_date, :user_id, :status)
    end
end
