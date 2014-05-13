module Georelevent
  module Models
    class Publisher < Sequel::Model
      one_to_many :subscriptions

      set_allowed_columns :title, :endpoint

      def validate
        super
        validates_presence [:title, :endpoint]
        validates_url :endpoint
      end
    end
  end
end
