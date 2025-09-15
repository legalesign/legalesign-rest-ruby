# typed: strong

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

      TaggedInteger =
        T.type_alias { T.all(Integer, Legalesign::PermissionsEnum) }
      OrInteger = T.type_alias { Integer }

      # Admin
      PERMISSIONS_ENUM_1 = T.let(1, Legalesign::PermissionsEnum::TaggedInteger)

      # Team visible, create and send
      PERMISSIONS_ENUM_2 = T.let(2, Legalesign::PermissionsEnum::TaggedInteger)

      # Team visible, send only
      PERMISSIONS_ENUM_3 = T.let(3, Legalesign::PermissionsEnum::TaggedInteger)

      # Team not visible, send only
      PERMISSIONS_ENUM_4 = T.let(4, Legalesign::PermissionsEnum::TaggedInteger)

      # Team not visible, create and send
      PERMISSIONS_ENUM_5 = T.let(5, Legalesign::PermissionsEnum::TaggedInteger)

      # Team visible, read only
      PERMISSIONS_ENUM_6 = T.let(6, Legalesign::PermissionsEnum::TaggedInteger)

      sig do
        override.returns(T::Array[Legalesign::PermissionsEnum::TaggedInteger])
      end
      def self.values
      end
    end
  end
end
