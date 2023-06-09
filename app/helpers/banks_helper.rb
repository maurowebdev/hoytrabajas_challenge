# frozen_string_literal: true

module BanksHelper
  def edit_bank_action(bank)
    link_to edit_bank_path(bank), class: 'hover text-white' do
      "<svg class='w-5 h-5' fill='none' stroke='currentColor' stroke-width='1.5' viewbox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
        <path d='M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10' stroke-linecap='round' stroke-linejoin='round'></path>
        </svg>".html_safe
    end
  end

  def destroy_bank_action(bank)
    button_to bank_path(bank), form: { data: { turbo_confirm: t('bank.destroy.confirm') } }, method: :delete do
      "<a class='hover text-white' title='Destroy'>
          <svg class='w-5 h-5' fill='none' stroke='currentColor' stroke-width='1.5' viewbox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
            <path d='M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636' stroke-linecap='round' stroke-linejoin='round'></path>
          </svg>
        </a>
      </div>".html_safe
    end
  end
end
