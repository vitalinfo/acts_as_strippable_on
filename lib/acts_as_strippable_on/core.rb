# frozen_string_literal: true

module ActsAsStrippableOn
  module Core
    def acts_as_strippable_on(*attributes)
      before_validation do
        attributes.each do |attribute|
          next if send(attribute).blank? || !send(attribute).respond_to?(:strip)
          assign_attributes(attribute => send(attribute).strip)
        end
      end
    end
  end
end
