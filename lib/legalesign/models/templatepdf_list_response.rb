# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Templatepdf#list
    class TemplatepdfListResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [Legalesign::Models::ListMeta, nil]
      optional :meta, -> { Legalesign::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<Legalesign::Models::TemplatePdf>, nil]
      optional :objects, -> { Legalesign::Internal::Type::ArrayOf[Legalesign::TemplatePdf] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [Legalesign::Models::ListMeta]
      #   @param objects [Array<Legalesign::Models::TemplatePdf>]
    end
  end
end
