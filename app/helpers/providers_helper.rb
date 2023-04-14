# frozen_string_literal: true

module ProvidersHelper
  include Pagy::Frontend

  def rough_translate_blanks(provider)
    blank_text = t('no_data')

    OpenStruct.new(
      name: provider.name,
      contact_name: provider.contact_name,
      contact_phone_number: provider.contact_phone_number.presence || blank_text,
      bank_name: provider.bank_name,
      bank_account_number: provider.bank_account_number.presence || blank_text
    )
  end

  def edit_action(provider)
    link_to edit_provider_path(provider), class: 'hover text-white' do
      "<svg class='w-5 h-5' fill='none' stroke='currentColor' stroke-width='1.5' viewbox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
        <path d='M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10' stroke-linecap='round' stroke-linejoin='round'></path>
        </svg>".html_safe
    end
  end

  def destroy_action(provider)
    button_to provider_path(provider), form: { data: { turbo_confirm: t('provider.destroy.confirm') } }, method: :delete do
      "<a class='hover text-white' title='Destroy'>
          <svg class='w-5 h-5' fill='none' stroke='currentColor' stroke-width='1.5' viewbox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
            <path d='M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636' stroke-linecap='round' stroke-linejoin='round'></path>
          </svg>
        </a>
      </div>".html_safe
    end
  end
end
