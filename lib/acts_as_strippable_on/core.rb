module ActsAsStrippableOn
  module Core
    def acts_as_strippable_on(*attributes)
      before_validation do
        attributes.each do |attribute|
          send(attribute).strip! if send(attribute).present? && send(attribute).respond_to?(:strip!)
        end
      end
    end
  end
end
