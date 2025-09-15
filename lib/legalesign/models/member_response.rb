# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Member#retrieve
    class MemberResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute created
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute group
      #
      #   @return [String, nil]
      optional :group, String

      # @!attribute modified
      #
      #   @return [Time, nil]
      optional :modified, Time

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

      # @!attribute resource_uri
      #
      #   @return [String, nil]
      optional :resource_uri, String

      # @!attribute user
      #
      #   @return [String, nil]
      optional :user, String

      # @!method initialize(created: nil, group: nil, modified: nil, permission: nil, resource_uri: nil, user: nil)
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::MemberResponse} for more details.
      #
      #   @param created [Time]
      #
      #   @param group [String]
      #
      #   @param modified [Time]
      #
      #   @param permission [Integer, Legalesign::Models::PermissionsEnum] Permissions options:
      #
      #   @param resource_uri [String]
      #
      #   @param user [String]
    end
  end
end
