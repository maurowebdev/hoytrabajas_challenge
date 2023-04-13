# frozen_string_literal: true

module AdminHelper
  def provider_count
    Provider.count
  end

  def bank_count
    Bank.count
  end

  def random_date
    l(DateTime.now - rand(0..20).days, format: :short)
  end
end
