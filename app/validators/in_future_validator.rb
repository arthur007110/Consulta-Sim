class InFutureValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, "period is not valid") unless in_future?(value)
  end

  def in_future?(date)
    date.present? && date > Time.zone.today
  end
end