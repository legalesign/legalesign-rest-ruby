# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Member#create
    class MemberCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute group
      #
      #   @return [String]
      required :group, String

      # @!attribute do_email
      #   use legalesign to send email notification to new user
      #
      #   @return [Boolean, nil]
      optional :do_email, Legalesign::Internal::Type::Boolean

      # @!attribute permission
      #   Permissions options:
      #
      #   - 1 - administrator
      #   - 2 - team docs visible, create & send
      #   - 3 - team docs visible, send only
      #   - 4 - no team sent docs visible, send only
      #   - 5 - no team docs visible, create & send
      #   - 6 - team docs visible, read only
      #
      #   @return [Integer, Legalesign::Models::PermissionsEnum, nil]
      optional :permission, enum: -> { Legalesign::PermissionsEnum }

      # @!method initialize(email:, group:, do_email: nil, permission: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::MemberCreateParams} for more details.
      #
      #   @param email [String]
      #
      #   @param group [String]
      #
      #   @param do_email [Boolean] use legalesign to send email notification to new user
      #
      #   @param permission [Integer, Legalesign::Models::PermissionsEnum] Permissions options:
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
