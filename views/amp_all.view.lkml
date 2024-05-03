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
    type: number
    sql: ${TABLE}.amplitude_id ;;
  }

  dimension: app {
    type: number
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

  dimension: data_group_first_event {
    type: string
    sql: ${TABLE}.data_group_first_event ;;
  }

  dimension: data_group_ids {
    type: string
    sql: ${TABLE}.data_group_ids ;;
  }

  dimension: data_path {
    type: string
    sql: ${TABLE}.data_path ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: data_user_properties_updated {
    type: yesno
    sql: ${TABLE}.data_user_properties_updated ;;
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
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_properties_action {
    type: string
    sql: ${TABLE}.event_properties_Action ;;
  }

  dimension: event_properties_agent_id {
    type: string
    sql: ${TABLE}.`event_properties_Agent ID` ;;
  }

  dimension: event_properties_allowance {
    type: yesno
    sql: ${TABLE}.event_properties_Allowance ;;
  }

  dimension: event_properties_alt_space {
    type: yesno
    sql: ${TABLE}.`event_properties_Alt Space` ;;
  }

  dimension: event_properties_amount {
    type: number
    sql: ${TABLE}.event_properties_Amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_event_properties_amount {
    type: sum
    sql: ${event_properties_amount} ;;  }
  measure: average_event_properties_amount {
    type: average
    sql: ${event_properties_amount} ;;  }

  dimension: event_properties_bag_tag_printer {
    type: yesno
    sql: ${TABLE}.`event_properties_Bag Tag Printer` ;;
  }

  dimension: event_properties_block_code {
    type: string
    sql: ${TABLE}.`event_properties_Block Code` ;;
  }

  dimension: event_properties_card_code {
    type: string
    sql: ${TABLE}.`event_properties_Card Code` ;;
  }

  dimension: event_properties_carrier_code {
    type: string
    sql: ${TABLE}.`event_properties_Carrier Code` ;;
  }

  dimension: event_properties_charged {
    type: yesno
    sql: ${TABLE}.event_properties_Charged ;;
  }

  dimension: event_properties_charged_seat_count {
    type: number
    sql: ${TABLE}.`event_properties_Charged Seat Count` ;;
  }

  dimension: event_properties_commercial_name {
    type: string
    sql: ${TABLE}.`event_properties_Commercial Name` ;;
  }

  dimension: event_properties_currency {
    type: string
    sql: ${TABLE}.event_properties_Currency ;;
  }

  dimension: event_properties_current_city {
    type: yesno
    sql: ${TABLE}.`event_properties_Current City` ;;
  }

  dimension: event_properties_date {
    type: string
    sql: ${TABLE}.event_properties_Date ;;
  }

  dimension: event_properties_deal_applied {
    type: yesno
    sql: ${TABLE}.`event_properties_Deal Applied` ;;
  }

  dimension: event_properties_destination {
    type: string
    sql: ${TABLE}.event_properties_Destination ;;
  }

  dimension: event_properties_document_type {
    type: string
    sql: ${TABLE}.`event_properties_Document Type` ;;
  }

  dimension: event_properties_duration {
    type: number
    sql: ${TABLE}.event_properties_Duration ;;
  }

  dimension: event_properties_duty_code {
    type: yesno
    sql: ${TABLE}.`event_properties_Duty Code` ;;
  }

  dimension: event_properties_entry {
    type: number
    sql: ${TABLE}.event_properties_Entry ;;
  }

  dimension: event_properties_error {
    type: string
    sql: ${TABLE}.event_properties_Error ;;
  }

  dimension: event_properties_error_code {
    type: string
    sql: ${TABLE}.event_properties_errorCode ;;
  }

  dimension: event_properties_error_codee {
    type: string
    sql: ${TABLE}.event_properties_error_code ;;
  }

  dimension: event_properties_error_codes {
    type: string
    sql: ${TABLE}.`event_properties_Error Code` ;;
  }

  dimension: event_properties_error_message {
    type: string
    sql: ${TABLE}.event_properties_error_message ;;
  }

  dimension: event_properties_error_source {
    type: string
    sql: ${TABLE}.event_properties_error_source ;;
  }

  dimension: event_properties_error_type {
    type: string
    sql: ${TABLE}.event_properties_error_type ;;
  }

  dimension: event_properties_exit {
    type: number
    sql: ${TABLE}.event_properties_Exit ;;
  }

  dimension: event_properties_fee_overriden {
    type: yesno
    sql: ${TABLE}.`event_properties_Fee Overriden` ;;
  }

  dimension: event_properties_flight_list_type {
    type: string
    sql: ${TABLE}.`event_properties_Flight List Type` ;;
  }

  dimension: event_properties_flight_number {
    type: string
    sql: ${TABLE}.`event_properties_Flight Number` ;;
  }

  dimension: event_properties_frequent_flyer_used {
    type: yesno
    sql: ${TABLE}.`event_properties_Frequent Flyer Used` ;;
  }

  dimension: event_properties_from_emd_exchange {
    type: yesno
    sql: ${TABLE}.`event_properties_From EMD Exchange` ;;
  }

  dimension: event_properties_function {
    type: string
    sql: ${TABLE}.event_properties_Function ;;
  }

  dimension: event_properties_group_code {
    type: string
    sql: ${TABLE}.`event_properties_Group Code` ;;
  }

  dimension: event_properties_hard_copy {
    type: yesno
    sql: ${TABLE}.`event_properties_Hard Copy` ;;
  }

  dimension: event_properties_host {
    type: yesno
    sql: ${TABLE}.event_properties_Host ;;
  }

  dimension: event_properties_invoked_by {
    type: string
    sql: ${TABLE}.`event_properties_Invoked By` ;;
  }

  dimension: event_properties_is_structured {
    type: yesno
    sql: ${TABLE}.`event_properties_Is Structured` ;;
  }

  dimension: event_properties_machine_address {
    type: string
    sql: ${TABLE}.`event_properties_Machine Address` ;;
  }

  dimension: event_properties_manual {
    type: yesno
    sql: ${TABLE}.event_properties_Manual ;;
  }

  dimension: event_properties_multiple_fop {
    type: yesno
    sql: ${TABLE}.`event_properties_Multiple FOP` ;;
  }

  dimension: event_properties_no_payment_required {
    type: yesno
    sql: ${TABLE}.`event_properties_No Payment Required` ;;
  }

  dimension: event_properties_number_of_bags {
    type: number
    sql: ${TABLE}.`event_properties_Number of Bags` ;;
    value_format: "0.000,\" K\""
  }

  dimension: event_properties_number_of_passengers {
    type: number
    sql: ${TABLE}.`event_properties_Number of Passengers` ;;
  }

  dimension: event_properties_number_of_segments {
    type: number
    sql: ${TABLE}.`event_properties_Number of Segments` ;;
  }

  dimension: event_properties_offload_partial_success {
    type: yesno
    sql: ${TABLE}.`event_properties_Offload Partial Success` ;;
  }

  dimension: event_properties_offload_type {
    type: string
    sql: ${TABLE}.`event_properties_Offload Type` ;;
  }

  dimension: event_properties_option {
    type: string
    sql: ${TABLE}.event_properties_Option ;;
  }

  dimension: event_properties_origin {
    type: string
    sql: ${TABLE}.event_properties_Origin ;;
  }

  dimension: event_properties_os {
    type: string
    sql: ${TABLE}.event_properties_OS ;;
  }

  dimension: event_properties_page {
    type: string
    sql: ${TABLE}.event_properties_Page ;;
  }

  dimension: event_properties_paid {
    type: yesno
    sql: ${TABLE}.event_properties_Paid ;;
  }

  dimension: event_properties_partial {
    type: yesno
    sql: ${TABLE}.event_properties_Partial ;;
  }

  dimension: event_properties_payment_amount {
    type: number
    sql: ${TABLE}.`event_properties_Payment Amount` ;;
  }

  dimension: event_properties_payment_currency {
    type: string
    sql: ${TABLE}.`event_properties_Payment Currency` ;;
  }

  dimension: event_properties_payment_type {
    type: string
    sql: ${TABLE}.`event_properties_Payment Type` ;;
  }

  dimension: event_properties_predefined_list_name {
    type: string
    sql: ${TABLE}.`event_properties_Predefined List Name` ;;
  }

  dimension: event_properties_prepaid {
    type: yesno
    sql: ${TABLE}.event_properties_Prepaid ;;
  }

  dimension: event_properties_quantity {
    type: number
    sql: ${TABLE}.event_properties_Quantity ;;
  }

  dimension: event_properties_record_locator {
    type: string
    sql: ${TABLE}.`event_properties_Record Locator` ;;
  }

  dimension: event_properties_relaunched {
    type: yesno
    sql: ${TABLE}.event_properties_Relaunched ;;
  }

  dimension: event_properties_sample_page {
    type: string
    sql: ${TABLE}.event_properties_sample_page ;;
  }

  dimension: event_properties_search_qualifiers {
    type: string
    sql: ${TABLE}.`event_properties_Search qualifiers` ;;
  }

  dimension: event_properties_search_type {
    type: string
    sql: ${TABLE}.`event_properties_Search Type` ;;
  }

  dimension: event_properties_seat_count {
    type: number
    sql: ${TABLE}.`event_properties_Seat Count` ;;
  }

  dimension: event_properties_short_check {
    type: yesno
    sql: ${TABLE}.`event_properties_Short Check` ;;
  }

  dimension: event_properties_split_payment {
    type: yesno
    sql: ${TABLE}.`event_properties_Split Payment` ;;
  }

  dimension: event_properties_station_number {
    type: string
    sql: ${TABLE}.`event_properties_Station Number` ;;
  }

  dimension: event_properties_sub_code {
    type: string
    sql: ${TABLE}.`event_properties_Sub Code` ;;
  }

  dimension: event_properties_success {
    type: yesno
    sql: ${TABLE}.event_properties_Success ;;
  }

  dimension: event_properties_ticket_printer {
    type: yesno
    sql: ${TABLE}.`event_properties_Ticket Printer` ;;
  }

  dimension: event_properties_total_amount {
    type: number
    sql: ${TABLE}.`event_properties_Total Amount` ;;
  }

  dimension: event_properties_total_quantity {
    type: number
    sql: ${TABLE}.`event_properties_Total Quantity` ;;
  }

  dimension: event_properties_total_waived_items {
    type: number
    sql: ${TABLE}.`event_properties_Total Waived Items` ;;
  }

  dimension: event_properties_type {
    type: string
    sql: ${TABLE}.event_properties_Type ;;
  }

  dimension: event_properties_waived {
    type: yesno
    sql: ${TABLE}.event_properties_Waived ;;
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
    type: number
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

  dimension: user_properties_agent_id {
    type: string
    sql: ${TABLE}.`user_properties_Agent ID` ;;
  }

  dimension: user_properties_conversation_id {
    type: string
    sql: ${TABLE}.user_properties_conversationId ;;
  }

  dimension: user_properties_current_city {
    type: string
    sql: ${TABLE}.`user_properties_Current City` ;;
  }

  dimension: user_properties_environment {
    type: string
    sql: ${TABLE}.user_properties_environment ;;
  }

  dimension: user_properties_machine_address {
    type: string
    sql: ${TABLE}.`user_properties_Machine Address` ;;
  }

  dimension: user_properties_os {
    type: string
    sql: ${TABLE}.user_properties_OS ;;
  }

  dimension: user_properties_relaunched {
    type: yesno
    sql: ${TABLE}.user_properties_Relaunched ;;
  }

  dimension: user_properties_station_number {
    type: string
    sql: ${TABLE}.`user_properties_Station Number` ;;
  }

  dimension: user_properties_storefront {
    type: string
    sql: ${TABLE}.user_properties_storefront ;;
  }

  dimension: user_properties_user_id {
    type: string
    sql: ${TABLE}.user_properties_user_id ;;
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
    drill_fields: [version_name, os_name, event_properties_commercial_name, event_properties_predefined_list_name]
  }
}
