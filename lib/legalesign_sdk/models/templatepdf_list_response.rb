# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Templatepdf#list
    class TemplatepdfListResponse < LegalesignSDK::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [LegalesignSDK::Models::ListMeta, nil]
      optional :meta, -> { LegalesignSDK::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<LegalesignSDK::Models::TemplatePdf>, nil]
      optional :objects, -> { LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::TemplatePdf] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [LegalesignSDK::Models::ListMeta]
      #   @param objects [Array<LegalesignSDK::Models::TemplatePdf>]
    end
  end
end
