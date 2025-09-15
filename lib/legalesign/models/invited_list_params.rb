# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Invited#list
    class InvitedListParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute group
      #   filter list by a given group
      #
      #   @return [String, nil]
      optional :group, String

      # @!method initialize(group: nil, request_options: {})
      #   @param group [String] filter list by a given group
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
