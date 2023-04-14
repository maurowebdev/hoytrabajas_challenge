# frozen_string_literal: true

class BanksController < ApplicationController
  before_action :set_bank, only: %i[show edit update destroy]
  before_action :ensure_logged_in

  def index
    @banks = Bank.all
  end

  def show; end

  def new
    @bank = Bank.new
  end

  def edit; end

  def create
    @bank = Bank.new(bank_params)

    if @bank.save
      redirect_to @bank, notice: t('bank.create.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @bank.update(bank_params)
      redirect_to @bank, notice: t('bank.update.success')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bank.destroy
    redirect_to banks_url, notice: t('bank.destroy.success')
  end

  private

  def set_bank
    @bank = Bank.find(params[:id])
  end

  def bank_params
    params.require(:bank).permit(:name)
  end
end
