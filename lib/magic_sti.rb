require "magic_sti/version"

module MagicSTI
  extend ActiveSupport::Concern

  included do
    class << self
      def new_with_cast(attrs = nil, options = {}, &blk)
        type_col = inheritance_column.to_sym
        attrs = attrs && attrs.symbolize_keys
        type = attrs && attrs.delete(type_col)
        klass = type && (type.is_a?(Class) ? type : type.constantize) || self

        raise "Tried to instantiate #{klass} for #{self} (STI)" unless klass == self || klass < self

        klass.new_without_cast(attrs, options, &blk)
      end

      alias_method_chain :new, :cast
    end
  end
end
