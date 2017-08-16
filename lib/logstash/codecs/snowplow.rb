# encoding: utf-8

require 'json'
require 'logger'
require 'logstash/codecs/base'
require 'logstash/namespace'

# Read serialized Thrift Snowplow enriched-event records as Logstash events
#
# This plugin is used to serialize Logstash events as
# Snowplow enriched-event objects.
#
# ==== Encoding
#
# This codec is for serializing individual Logstash events as Snowplow enriched-event.
#
#
# ==== Decoding
#
# This codec is for deserializing individual Snowplow enriched-event serialized objects as Logstash events.
#
#
# ==== Usage
# Example usage with kafka input.
#
# [source,ruby]
# ----------------------------------
# input {
#   kafka {
#     codec => snowplow {
#     }
#   }
# }
# filter {
#   ...
# }
# output {
#   ...
# }
# ----------------------------------

ENRICHED_EVENT = %w[
  app_id
  platform
  etl_tstamp
  collector_tstamp
  dvce_created_tstamp
  event
  event_id
  txn_id
  name_tracker
  v_tracker
  v_collector
  v_etl
  user_id
  user_ipaddress
  user_fingerprint
  domain_userid
  domain_sessionidx
  network_userid
  geo_country
  geo_region
  geo_city
  geo_zipcode
  geo_latitude
  geo_longitude
  geo_region_name
  ip_isp
  ip_organization
  ip_domain
  ip_netspeed
  page_url
  page_title
  page_referrer
  page_urlscheme
  page_urlhost
  page_urlport
  page_urlpath
  page_urlquery
  page_urlfragment
  refr_urlscheme
  refr_urlhost
  refr_urlport
  refr_urlpath
  refr_urlquery
  refr_urlfragment
  refr_medium
  refr_source
  refr_term
  mkt_medium
  mkt_source
  mkt_term
  mkt_content
  mkt_campaign
  contexts
  se_category
  se_action
  se_label
  se_property
  se_value
  unstruct_event
  tr_orderid
  tr_affiliation
  tr_total
  tr_tax
  tr_shipping
  tr_city
  tr_state
  tr_country
  ti_orderid
  ti_sku
  ti_name
  ti_category
  ti_price
  ti_quantity
  pp_xoffset_min
  pp_xoffset_max
  pp_yoffset_min
  pp_yoffset_max
  useragent
  br_name
  br_family
  br_version
  br_type
  br_renderengine
  br_lang
  br_features_pdf
  br_features_flash
  br_features_java
  br_features_director
  br_features_quicktime
  br_features_realplayer
  br_features_windowsmedia
  br_features_gears
  br_features_silverlight
  br_cookies
  br_colordepth
  br_viewwidth
  br_viewheight
  os_name
  os_family
  os_manufacturer
  os_timezone
  dvce_type
  dvce_ismobile
  dvce_screenwidth
  dvce_screenheight
  doc_charset
  doc_width
  doc_height
  tr_currency
  tr_total_base
  tr_tax_base
  tr_shipping_base
  ti_currency
  ti_price_base
  base_currency
  geo_timezone
  mkt_clickid
  mkt_network
  etl_tags
  dvce_sent_tstamp
  refr_domain_userid
  refr_dvce_tstamp
  derived_contexts
  domain_sessionid
  derived_tstamp
  event_vendor
  event_name
  event_format
  event_version
  event_fingerprint
].freeze

class LogStash::Codecs::Snowplow < LogStash::Codecs::Base
  config_name 'snowplow'

  public

  def register
    @logger.info('Initializing logstash Snowplow enriched-event codec')
  end

  public
  def decode(data)
    begin
      values = data.to_s.split("\t")
      hash = Hash[*ENRICHED_EVENT.zip(values).flatten] if values.length == ENRICHED_EVENT.length
      yield LogStash::Event.new(hash)
    rescue
      @logger.error("Fail to decode: #{data.to_s}")
    end
  end
end