# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Attachment#list
    class AttachmentListResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [Legalesign::Models::ListMeta, nil]
      optional :meta, -> { Legalesign::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<Legalesign::Models::AttachmentResponse>, nil]
      optional :objects, -> { Legalesign::Internal::Type::ArrayOf[Legalesign::AttachmentResponse] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [Legalesign::Models::ListMeta]
      #   @param objects [Array<Legalesign::Models::AttachmentResponse>]
    end
  end
end
