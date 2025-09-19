# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Groups#create
    class GroupCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute xframe_allow
      #   Set to true if you want to embed your signing page.
      #
      #   @return [Boolean, nil]
      optional :xframe_allow, Legalesign::Internal::Type::Boolean

      # @!method initialize(name:, xframe_allow: nil, request_options: {})
      #   @param name [String]
      #
      #   @param xframe_allow [Boolean] Set to true if you want to embed your signing page.
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
