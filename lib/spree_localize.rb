require 'i18n'
require 'rails-i18n'
require 'spree_core'

require 'spree_localize/engine'

module SpreeLocalize
  def self.normalize_number(number)
    number.to_s.tr(',', '.').to_f
  end
end
