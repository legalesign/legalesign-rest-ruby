# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::User#update
    class UserUpdateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!method initialize(first_name: nil, last_name: nil, request_options: {})
      #   @param first_name [String]
      #   @param last_name [String]
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
