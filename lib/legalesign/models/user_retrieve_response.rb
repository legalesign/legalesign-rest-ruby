# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::User#retrieve
    class UserRetrieveResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute date_joined
      #
      #   @return [Time, nil]
      optional :date_joined, Time

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute groups
      #
      #   @return [Array<String>, nil]
      optional :groups, Legalesign::Internal::Type::ArrayOf[String]

      # @!attribute last_login
      #
      #   @return [Time, nil]
      optional :last_login, Time

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute resource_uri
      #
      #   @return [String, nil]
      optional :resource_uri, String

      # @!attribute timezone
      #   List of available timezones
      #
      #   @return [Symbol, Legalesign::Models::TimezoneEnum, nil]
      optional :timezone, enum: -> { Legalesign::TimezoneEnum }

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(date_joined: nil, email: nil, first_name: nil, groups: nil, last_login: nil, last_name: nil, resource_uri: nil, timezone: nil, username: nil)
      #   @param date_joined [Time]
      #
      #   @param email [String]
      #
      #   @param first_name [String]
      #
      #   @param groups [Array<String>]
      #
      #   @param last_login [Time]
      #
      #   @param last_name [String]
      #
      #   @param resource_uri [String]
      #
      #   @param timezone [Symbol, Legalesign::Models::TimezoneEnum] List of available timezones
      #
      #   @param username [String]
    end
  end
end
