# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rack/all/rack.rbi
#
# rack-2.0.7
module Rack
  def self.release; end
  def self.version; end
end
module Rack::Auth
end
module Rack::Auth::Digest
end
module Rack::Session
end
class Rack::QueryParser
  def initialize(params_class, key_space_limit, param_depth_limit); end
  def key_space_limit; end
  def make_params; end
  def new_depth_limit(param_depth_limit); end
  def new_space_limit(key_space_limit); end
  def normalize_params(params, name, v, depth); end
  def param_depth_limit; end
  def params_hash_has_key?(hash, key); end
  def params_hash_type?(obj); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def self.make_default(key_space_limit, param_depth_limit); end
  def unescape(s); end
end
class Rack::QueryParser::ParameterTypeError < TypeError
end
class Rack::QueryParser::InvalidParameterError < ArgumentError
end
class Rack::QueryParser::Params
  def [](key); end
  def []=(key, value); end
  def initialize(limit); end
  def key?(key); end
  def to_params_hash; end
end
module Rack::Utils
  def add_cookie_to_header(header, key, value); end
  def add_remove_cookie_to_header(header, key, value = nil); end
  def best_q_match(q_value_header, available_mimes); end
  def build_nested_query(value, prefix = nil); end
  def build_query(params); end
  def byte_ranges(env, size); end
  def clean_path_info(path_info); end
  def clock_time; end
  def delete_cookie_header!(header, key, value = nil); end
  def escape(s); end
  def escape_html(string); end
  def escape_path(s); end
  def get_byte_ranges(http_range, size); end
  def make_delete_cookie_header(header, key, value); end
  def parse_cookies(env); end
  def parse_cookies_header(header); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def q_values(q_value_header); end
  def rfc2109(time); end
  def rfc2822(time); end
  def secure_compare(a, b); end
  def select_best_encoding(available_encodings, accept_encoding); end
  def self.add_cookie_to_header(header, key, value); end
  def self.add_remove_cookie_to_header(header, key, value = nil); end
  def self.best_q_match(q_value_header, available_mimes); end
  def self.build_nested_query(value, prefix = nil); end
  def self.build_query(params); end
  def self.byte_ranges(env, size); end
  def self.clean_path_info(path_info); end
  def self.clock_time; end
  def self.default_query_parser; end
  def self.default_query_parser=(arg0); end
  def self.delete_cookie_header!(header, key, value = nil); end
  def self.escape(s); end
  def self.escape_html(string); end
  def self.escape_path(s); end
  def self.get_byte_ranges(http_range, size); end
  def self.key_space_limit; end
  def self.key_space_limit=(v); end
  def self.make_delete_cookie_header(header, key, value); end
  def self.multipart_part_limit; end
  def self.multipart_part_limit=(arg0); end
  def self.param_depth_limit; end
  def self.param_depth_limit=(v); end
  def self.parse_cookies(env); end
  def self.parse_cookies_header(header); end
  def self.parse_nested_query(qs, d = nil); end
  def self.parse_query(qs, d = nil, &unescaper); end
  def self.q_values(q_value_header); end
  def self.rfc2109(time); end
  def self.rfc2822(time); end
  def self.secure_compare(a, b); end
  def self.select_best_encoding(available_encodings, accept_encoding); end
  def self.set_cookie_header!(header, key, value); end
  def self.status_code(status); end
  def self.unescape(s, encoding = nil); end
  def self.unescape_path(s); end
  def self.valid_path?(path); end
  def set_cookie_header!(header, key, value); end
  def status_code(status); end
  def unescape(s, encoding = nil); end
  def unescape_path(s); end
  def valid_path?(path); end
end
class Rack::Utils::Context
  def app; end
  def call(env); end
  def context(env, app = nil); end
  def for; end
  def initialize(app_f, app_r); end
  def recontext(app); end
end
class Rack::Utils::HeaderHash < Hash
  def [](k); end
  def []=(k, v); end
  def delete(k); end
  def each; end
  def has_key?(k); end
  def include?(k); end
  def initialize(hash = nil); end
  def initialize_copy(other); end
  def key?(k); end
  def member?(k); end
  def merge!(other); end
  def merge(other); end
  def names; end
  def replace(other); end
  def self.new(hash = nil); end
  def to_hash; end
end
class Rack::MediaType
  def self.params(content_type); end
  def self.strip_doublequotes(str); end
  def self.type(content_type); end
end
class Rack::Request
  def delete_param(k); end
  def initialize(env); end
  def params; end
  def update_param(k, v); end
  include Rack::Request::Env
  include Rack::Request::Helpers
end
module Rack::Request::Env
  def add_header(key, v); end
  def delete_header(name); end
  def each_header(&block); end
  def env; end
  def fetch_header(name, &block); end
  def get_header(name); end
  def has_header?(name); end
  def initialize(env); end
  def initialize_copy(other); end
  def set_header(name, v); end
end
module Rack::Request::Helpers
  def GET; end
  def POST; end
  def [](key); end
  def []=(key, value); end
  def accept_encoding; end
  def accept_language; end
  def authority; end
  def base_url; end
  def body; end
  def content_charset; end
  def content_length; end
  def content_type; end
  def cookies; end
  def default_session; end
  def delete?; end
  def delete_param(k); end
  def form_data?; end
  def forwarded_scheme; end
  def fullpath; end
  def get?; end
  def head?; end
  def host; end
  def host_with_port; end
  def ip; end
  def link?; end
  def logger; end
  def media_type; end
  def media_type_params; end
  def multithread?; end
  def options?; end
  def params; end
  def parse_http_accept_header(header); end
  def parse_multipart; end
  def parse_query(qs, d = nil); end
  def parseable_data?; end
  def patch?; end
  def path; end
  def path_info; end
  def path_info=(s); end
  def port; end
  def post?; end
  def put?; end
  def query_parser; end
  def query_string; end
  def referer; end
  def referrer; end
  def reject_trusted_ip_addresses(ip_addresses); end
  def request_method; end
  def scheme; end
  def script_name; end
  def script_name=(s); end
  def session; end
  def session_options; end
  def split_ip_addresses(ip_addresses); end
  def ssl?; end
  def trace?; end
  def trusted_proxy?(ip); end
  def unlink?; end
  def update_param(k, v); end
  def url; end
  def user_agent; end
  def values_at(*keys); end
  def xhr?; end
end
