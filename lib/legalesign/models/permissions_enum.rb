# frozen_string_literal: true

module Legalesign
  module Models
    # Permissions options:
    #
    # - 1 - administrator
    # - 2 - team docs visible, create & send
    # - 3 - team docs visible, send only
    # - 4 - no team sent docs visible, send only
    # - 5 - no team docs visible, create & send
    # - 6 - team docs visible, read only
    module PermissionsEnum
      extend Legalesign::Internal::Type::Enum

      # Admin
      PERMISSIONS_ENUM_1 = 1

      # Team visible, create and send
      PERMISSIONS_ENUM_2 = 2

      # Team visible, send only
      PERMISSIONS_ENUM_3 = 3

      # Team not visible, send only
      PERMISSIONS_ENUM_4 = 4

      # Team not visible, create and send
      PERMISSIONS_ENUM_5 = 5

      # Team visible, read only
      PERMISSIONS_ENUM_6 = 6

      # @!method self.values
      #   @return [Array<Integer>]
    end
  end
end
