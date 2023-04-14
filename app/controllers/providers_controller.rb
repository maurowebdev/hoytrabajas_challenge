# frozen_string_literal: true

class ProvidersController < ApplicationController
  before_action :set_provider, only: %i[show edit update destroy]
  before_action :ensure_logged_in

  # GET /providers
  def index
    @pagy, @providers = pagy(Provider.includes(bank_account: :bank), items: 10)
  end

  # GET /providers/1
  def show; end

  # GET /providers/new
  def new
    redirect_to banks_path, notice: t('provider.empty_banks') if Bank.all.empty?

    @provider = Provider.new
    @provider.build_bank_account
  end

  # GET /providers/1/edit
  def edit; end

  # POST /providers
  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      redirect_to @provider, notice: t('provider.create.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /providers/1
  def update
    if @provider.update(provider_params)
      redirect_to @provider, notice: t('provider.update.success')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /providers/1
  def destroy
    @provider.destroy

    redirect_to root_url, notice: t('provider.destroy.success')
  end

  private

  def set_provider
    @provider = Provider.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def provider_params
    params
      .require(:provider)
      .permit(
        :name,
        :national_id_type,
        :national_id_number,
        :contact_name,
        :contact_phone_number,
        bank_account_attributes: %i[id bank_id number]
      )
  end
end
