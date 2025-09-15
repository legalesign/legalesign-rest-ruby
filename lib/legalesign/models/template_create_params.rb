# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Template#create
    class TemplateCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute group
      #
      #   @return [String]
      required :group, String

      # @!attribute latest_text
      #   text/html for template
      #
      #   @return [String]
      required :latest_text, String

      # @!attribute title
      #
      #   @return [String]
      required :title, String

      # @!attribute user
      #   assign to a user if not api user
      #
      #   @return [String, nil]
      optional :user, String

      # @!method initialize(group:, latest_text:, title:, user: nil, request_options: {})
      #   @param group [String]
      #
      #   @param latest_text [String] text/html for template
      #
      #   @param title [String]
      #
      #   @param user [String] assign to a user if not api user
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
