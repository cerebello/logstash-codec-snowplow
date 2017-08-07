struct SchemaSniffer {

  // The application (site, game, app etc) this event belongs to, and the tracker platform
  1: optional string app_id,
  2: optional string platform,

  // Date/time
  3: optional string etl_tstamp,
  4: optional string collector_tstamp,
  5: optional string dvce_created_tstamp,

  // Transaction (i.e. this logging event)
  6: optional string event,
  7: optional string event_id,
  8: optional string txn_id,

  // Versioning
  9: optional string name_tracker,
  10: optional string v_tracker,
  11: optional string v_collector,
  12: optional string v_etl,

  // User and visit
  13: optional string user_id,
  14: optional string user_ipaddress,
  15: optional string user_fingerprint,
  17: optional string domain_userid,
  18: optional i16 domain_sessionidx,
  19: optional string network_userid,

  // Location
  20: optional string geo_country,
  21: optional string geo_region,
  22: optional string geo_city,
  23: optional string geo_zipcode,
  24: optional double geo_latitude,
  25: optional double geo_longitude,
  26: optional string geo_region_name,

  // Other IP lookups
  27: optional string ip_isp,
  28: optional string ip_organization,
  29: optional string ip_domain,
  30: optional string ip_netspeed,

  // Page
  31: optional string page_url,
  32: optional string page_title,
  33: optional string page_referrer,

  // Page URL components
  34: optional string page_urlscheme,
  35: optional string page_urlhost,
  36: optional string page_urlport,
  37: optional string page_urlpath,
  38: optional string page_urlquery,
  39: optional string page_urlfragment,

  // Referrer URL components
  40: optional string refr_urlscheme,
  41: optional string refr_urlhost,
  42: optional string refr_urlport,
  43: optional string refr_urlpath,
  44: optional string refr_urlquery,
  45: optional string refr_urlfragment,

  // Referrer details
  46: optional string refr_medium,
  47: optional string refr_source,
  48: optional string refr_term,

  // Marketing
  49: optional string mkt_medium,
  50: optional string mkt_source,
  51: optional string mkt_term,
  52: optional string mkt_content,
  53: optional string mkt_campaign,

  // Custom Contexts
  54: optional string contexts,

  // Structured Event
  55: optional string se_category,
  56: optional string se_action,
  57: optional string se_label,
  58: optional string se_property,
  59: optional string se_value, // Technically should be a Double but may be rendered incorrectly by Cascading with scientific notification (which Redshift can't process)

  // Unstructured Event
  60: optional string unstruct_event,

  // Ecommerce transaction (from querystring)
  61: optional string tr_orderid,
  62: optional string tr_affiliation,
  63: optional string tr_total,
  64: optional string tr_tax,
  65: optional string tr_shipping,
  66: optional string tr_city,
  67: optional string tr_state,
  68: optional string tr_country,

  // Ecommerce transaction item (from querystring)
  69: optional string ti_orderid,
  70: optional string ti_sku,
  71: optional string ti_name,
  72: optional string ti_category,
  73: optional string ti_price,
  74: optional string ti_quantity,

  // Page Pings
  75: optional string pp_xoffset_min,
  76: optional string pp_xoffset_max,
  77: optional string pp_yoffset_min,
  78: optional string pp_yoffset_max,

  // User Agent
  79: optional string useragent,

  // Browser (from user-agent)
  80: optional string br_name,
  81: optional string br_family,
  82: optional string br_version,
  83: optional string br_type,
  84: optional string br_renderengine,

  // Browser (from querystring)
  85: optional string br_lang,

  // Individual feature fields for non-Hive targets (e.g. Infobright)
  86: optional i8 br_features_pdf,
  87: optional i8 br_features_flash,
  88: optional i8 br_features_java,
  89: optional i8 br_features_director,
  90: optional i8 br_features_quicktime,
  91: optional i8 br_features_realplayer,
  92: optional i8 br_features_windowsmedia,
  93: optional i8 br_features_gears,
  94: optional i8 br_features_silverlight,
  95: optional i8 br_cookies,
  96: optional string br_colordepth,
  97: optional i16 br_viewwidth,
  98: optional i16 br_viewheight,

  // OS (from user-agent)
  99: optional string os_name,
  100: optional string os_family,
  101: optional string os_manufacturer,
  102: optional string os_timezone,

  // Device/Hardware (from user-agent)
  103: optional string dvce_type,
  104: optional string dvce_ismobile,

  // Device (from querystring)
  105: optional i16 dvce_screenwidth,
  106: optional i16 dvce_screenheight,

  // Document
  107: optional string doc_charset,
  108: optional i16 doc_width,
  109: optional i16 doc_height,

  // Currency
  110: optional string tr_currency,
  111: optional string tr_total_base,
  112: optional string tr_tax_base,
  113: optional string tr_shipping_base,
  114: optional string ti_currency,
  115: optional string ti_price_base,
  116: optional string base_currency,

  // Geolocation
  117: optional string geo_timezone,

  // Click ID
  118: optional string mkt_clickid,
  119: optional string mkt_network,

  // ETL tags
  120: optional string etl_tags,

  // Time event was sent
  121: optional string dvce_sent_tstamp,

  // Referer
  122: optional string refr_domain_userid,
  123: optional string refr_dvce_tstamp,

  // Derived contexts
  124: optional string derived_contexts,

  // Session ID
  125: optional string domain_sessionid,

  // Derived timestamp
  126: optional string derived_tstamp,

  // Derived event vendor/name/format/version
  127: optional string event_vendor,
  128: optional string event_name,
  129: optional string event_format,
  130: optional string event_version,

  // Event fingerprint
  131: optional string event_fingerprint
}
