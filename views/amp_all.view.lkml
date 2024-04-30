# The name of this view in Looker is "Amp All"
view: amp_all {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sab-dev-dap-lakehouse-1470.dca.amp_all` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Adid" in Explore.

  dimension: adid {
    type: string
    sql: ${TABLE}.adid ;;
  }

  dimension: amplitude_attribution_ids {
    type: string
    sql: ${TABLE}.amplitude_attribution_ids ;;
  }

  dimension: amplitude_event_type {
    type: string
    sql: ${TABLE}.amplitude_event_type ;;
  }

  dimension: amplitude_id {
    type: string
    sql: ${TABLE}.amplitude_id ;;
  }

  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: client_event_time {
    type: string
    sql: ${TABLE}.client_event_time ;;
  }

  dimension: client_upload_time {
    type: string
    sql: ${TABLE}.client_upload_time ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: device_brand {
    type: string
    sql: ${TABLE}.device_brand ;;
  }

  dimension: device_carrier {
    type: string
    sql: ${TABLE}.device_carrier ;;
  }

  dimension: device_family {
    type: string
    sql: ${TABLE}.device_family ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: device_manufacturer {
    type: string
    sql: ${TABLE}.device_manufacturer ;;
  }

  dimension: device_model {
    type: string
    sql: ${TABLE}.device_model ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_properties {
    type: string
    sql: ${TABLE}.event_properties ;;
  }

  dimension: event_time {
    type: string
    sql: ${TABLE}.event_time ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: global_user_properties {
    type: string
    sql: ${TABLE}.global_user_properties ;;
  }

  dimension: group_properties {
    type: string
    sql: ${TABLE}.group_properties ;;
  }

  dimension: groups {
    type: string
    sql: ${TABLE}.`groups` ;;
  }

  dimension: idfa {
    type: string
    sql: ${TABLE}.idfa ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: is_attribution_event {
    type: string
    sql: ${TABLE}.is_attribution_event ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }

  dimension: location_lat {
    type: string
    sql: ${TABLE}.location_lat ;;
  }

  dimension: location_lng {
    type: string
    sql: ${TABLE}.location_lng ;;
  }

  dimension: os_name {
    type: string
    sql: ${TABLE}.os_name ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.os_version ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: paying {
    type: string
    sql: ${TABLE}.paying ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.plan ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: processed_time {
    type: string
    sql: ${TABLE}.processed_time ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sample_insert_id {
    type: string
    sql: ${TABLE}.sample_insert_id ;;
  }

  dimension: sample_insert_key {
    type: string
    sql: ${TABLE}.sample_insert_key ;;
  }

  dimension: sample_rate {
    type: string
    sql: ${TABLE}.sample_rate ;;
  }

  dimension: sample_schema {
    type: string
    sql: ${TABLE}.sample_schema ;;
  }

  dimension: server_received_time {
    type: string
    sql: ${TABLE}.server_received_time ;;
  }

  dimension: server_upload_time {
    type: string
    sql: ${TABLE}.server_upload_time ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: start_version {
    type: string
    sql: ${TABLE}.start_version ;;
  }

  dimension: user_creation_time {
    type: string
    sql: ${TABLE}.user_creation_time ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_properties {
    type: string
    sql: ${TABLE}.user_properties ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: version_name {
    type: string
    sql: ${TABLE}.version_name ;;
  }
  measure: count {
    type: count
    drill_fields: [version_name, os_name]
  }
}
