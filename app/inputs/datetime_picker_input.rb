class DatetimePickerInput < DatePickerInput
  private

  def display_pattern
    I18n.t('datepicker.dformat', default: '%d/%m/%Y')
  end

  def picker_pattern
    I18n.t('datepicker.pformat', default: 'DD/MM/YYYY')
  end
end
