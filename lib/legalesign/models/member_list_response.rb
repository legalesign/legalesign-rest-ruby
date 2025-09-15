# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Member#list
    class MemberListResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [Legalesign::Models::ListMeta, nil]
      optional :meta, -> { Legalesign::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<Legalesign::Models::MemberResponse>, nil]
      optional :objects, -> { Legalesign::Internal::Type::ArrayOf[Legalesign::MemberResponse] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [Legalesign::Models::ListMeta]
      #   @param objects [Array<Legalesign::Models::MemberResponse>]
    end
  end
end
