# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-equalizer/all/dry-equalizer.rbi
#
# dry-equalizer-0.2.2
module Dry
  def self.Equalizer(*keys, **options); end
end
class Dry::Equalizer < Module
  def define_cmp_method; end
  def define_hash_method; end
  def define_inspect_method; end
  def define_methods(inspect: nil); end
  def included(descendant); end
  def initialize(*keys, inspect: nil); end
end
module Dry::Equalizer::Methods
  def ==(other); end
  def eql?(other); end
end
