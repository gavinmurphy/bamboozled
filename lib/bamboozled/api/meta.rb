module Bamboozled
  module API
    class Meta < Base

      def fields
        return request(:get, "meta/fields")
      end

      def lists
        return request(:get, "meta/lists")[:lists][:list]
      end

      def tables
        # Note that BambooHR seems to be returning invalid XML
        # Bamboozled::Api::Base has been adjusted to return the raw text
        # when it encouters an invalid response, so the raw XML response
        # will be returned by this method.
        return request(:get, "meta/tables")
      end

      def users
        return request(:get, "meta/users")
      end

    end
  end
end
