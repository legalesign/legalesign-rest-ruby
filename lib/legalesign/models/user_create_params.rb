# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::User#create
    class UserCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute groups
      #   comma delimited list of groups to add user to, can be full group resource_uri or
      #   groupId
      #
      #   @return [String, nil]
      optional :groups, String

      # @!attribute password
      #   If not set a verification email is sent. Password must be at least 8 chars,
      #   include upper and lower case, with a number and a special character
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute permission
      #   set user permissions _ 1 - admin _ 2 - create and send docs, team user _ 3 -
      #   readonly, team user _ 4 - send only, team user _ 5 - send only, individual user
      #   _ 6 - create and send docs, invidual user
      #
      #   @return [Symbol, Legalesign::Models::UserCreateParams::Permission, nil]
      optional :permission, enum: -> { Legalesign::UserCreateParams::Permission }

      # @!attribute timezone
      #   List of available timezones
      #
      #   @return [Symbol, Legalesign::Models::TimezoneEnum, nil]
      optional :timezone, enum: -> { Legalesign::TimezoneEnum }

      # @!method initialize(email:, first_name:, last_name:, groups: nil, password: nil, permission: nil, timezone: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::UserCreateParams} for more details.
      #
      #   @param email [String]
      #
      #   @param first_name [String]
      #
      #   @param last_name [String]
      #
      #   @param groups [String] comma delimited list of groups to add user to, can be full group resource_uri or
      #
      #   @param password [String] If not set a verification email is sent. Password must be at least 8 chars, incl
      #
      #   @param permission [Symbol, Legalesign::Models::UserCreateParams::Permission] set user permissions _ 1 - admin _ 2 - create and send docs, team user \* 3 -
      #   rea
      #
      #   @param timezone [Symbol, Legalesign::Models::TimezoneEnum] List of available timezones
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]

      # set user permissions _ 1 - admin _ 2 - create and send docs, team user _ 3 -
      # readonly, team user _ 4 - send only, team user _ 5 - send only, individual user
      # _ 6 - create and send docs, invidual user
      module Permission
        extend Legalesign::Internal::Type::Enum

        PERMISSION_1 = :"1"
        PERMISSION_2 = :"2"
        PERMISSION_3 = :"3"
        PERMISSION_4 = :"4"
        PERMISSION_5 = :"5"
        PERMISSION_6 = :"6"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
