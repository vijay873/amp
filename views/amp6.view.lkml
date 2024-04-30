# The name of this view in Looker is "Amp6"
view: amp6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sab-dev-dap-lakehouse-1470.dca.amp6` ;;

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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: client_event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.client_event_time ;;
  }

  dimension_group: client_upload {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.client_upload_time ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: data__group_first_event {
    type: string
    sql: ${TABLE}.data.group_first_event ;;
    group_label: "Data"
    group_item_label: "Group First Event"
  }

  dimension: data__group_ids {
    type: string
    sql: ${TABLE}.data.group_ids ;;
    group_label: "Data"
    group_item_label: "Group Ids"
  }

  dimension: data__path {
    type: string
    sql: ${TABLE}.data.path ;;
    group_label: "Data"
    group_item_label: "Path"
  }

  dimension: data__user_properties_updated {
    type: yesno
    sql: ${TABLE}.data.user_properties_updated ;;
    group_label: "Data"
    group_item_label: "User Properties Updated"
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
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_properties__action {
    type: string
    sql: ${TABLE}.event_properties.Action ;;
    group_label: "Event Properties"
    group_item_label: "Action"
  }

  dimension: event_properties__agent_id {
    type: string
    sql: ${TABLE}.event_properties.`Agent ID` ;;
    group_label: "Event Properties"
    group_item_label: "Agent ID"
  }

  dimension: event_properties__allowance {
    type: yesno
    sql: ${TABLE}.event_properties.Allowance ;;
    group_label: "Event Properties"
    group_item_label: "Allowance"
  }

  dimension: event_properties__amount {
    type: number
    sql: ${TABLE}.event_properties.Amount ;;
    group_label: "Event Properties"
    group_item_label: "Amount"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_event_properties__amount {
    type: sum
    sql: ${event_properties__amount} ;;  }
  measure: average_event_properties__amount {
    type: average
    sql: ${event_properties__amount} ;;  }

  dimension: event_properties__block_code {
    type: string
    sql: ${TABLE}.event_properties.`Block Code` ;;
    group_label: "Event Properties"
    group_item_label: "Block Code"
  }

  dimension: event_properties__card_code {
    type: string
    sql: ${TABLE}.event_properties.`Card Code` ;;
    group_label: "Event Properties"
    group_item_label: "Card Code"
  }

  dimension: event_properties__carrier_code {
    type: string
    sql: ${TABLE}.event_properties.`Carrier Code` ;;
    group_label: "Event Properties"
    group_item_label: "Carrier Code"
  }

  dimension: event_properties__charged {
    type: yesno
    sql: ${TABLE}.event_properties.Charged ;;
    group_label: "Event Properties"
    group_item_label: "Charged"
  }

  dimension: event_properties__charged_seat_count {
    type: number
    sql: ${TABLE}.event_properties.`Charged Seat Count` ;;
    group_label: "Event Properties"
    group_item_label: "Charged Seat Count"
  }

  dimension: event_properties__commercial_name {
    type: string
    sql: ${TABLE}.event_properties.`Commercial Name` ;;
    group_label: "Event Properties"
    group_item_label: "Commercial Name"
  }

  dimension: event_properties__currency {
    type: string
    sql: ${TABLE}.event_properties.Currency ;;
    group_label: "Event Properties"
    group_item_label: "Currency"
  }

  dimension: event_properties__deal_applied {
    type: yesno
    sql: ${TABLE}.event_properties.`Deal Applied` ;;
    group_label: "Event Properties"
    group_item_label: "Deal Applied"
  }

  dimension: event_properties__document_type {
    type: string
    sql: ${TABLE}.event_properties.`Document Type` ;;
    group_label: "Event Properties"
    group_item_label: "Document Type"
  }

  dimension: event_properties__duration {
    type: number
    sql: ${TABLE}.event_properties.Duration ;;
    group_label: "Event Properties"
    group_item_label: "Duration"
  }

  dimension: event_properties__entry {
    type: number
    sql: ${TABLE}.event_properties.Entry ;;
    group_label: "Event Properties"
    group_item_label: "Entry"
  }

  dimension: event_properties__error_code {
    type: string
    sql: ${TABLE}.event_properties.`Error Code` ;;
    group_label: "Event Properties"
    group_item_label: "Error Code"
  }

  dimension: event_properties__error_message {
    type: string
    sql: ${TABLE}.event_properties.`Error Message` ;;
    group_label: "Event Properties"
    group_item_label: "Error Message"
  }

  dimension: event_properties__exit {
    type: number
    sql: ${TABLE}.event_properties.Exit ;;
    group_label: "Event Properties"
    group_item_label: "Exit"
  }

  dimension: event_properties__flight_list_type {
    type: string
    sql: ${TABLE}.event_properties.`Flight List Type` ;;
    group_label: "Event Properties"
    group_item_label: "Flight List Type"
  }

  dimension: event_properties__flight_number {
    type: number
    sql: ${TABLE}.event_properties.`Flight Number` ;;
    group_label: "Event Properties"
    group_item_label: "Flight Number"
  }

  dimension: event_properties__frequent_flyer_used {
    type: yesno
    sql: ${TABLE}.event_properties.`Frequent Flyer Used` ;;
    group_label: "Event Properties"
    group_item_label: "Frequent Flyer Used"
  }

  dimension: event_properties__from_emd_exchange {
    type: yesno
    sql: ${TABLE}.event_properties.`From EMD Exchange` ;;
    group_label: "Event Properties"
    group_item_label: "From Emd Exchange"
  }

  dimension: event_properties__function {
    type: string
    sql: ${TABLE}.event_properties.Function ;;
    group_label: "Event Properties"
    group_item_label: "Function"
  }

  dimension: event_properties__group_code {
    type: string
    sql: ${TABLE}.event_properties.`Group Code` ;;
    group_label: "Event Properties"
    group_item_label: "Group Code"
  }

  dimension: event_properties__host {
    type: yesno
    sql: ${TABLE}.event_properties.Host ;;
    group_label: "Event Properties"
    group_item_label: "Host"
  }

  dimension: event_properties__invoked_by {
    type: string
    sql: ${TABLE}.event_properties.`Invoked By` ;;
    group_label: "Event Properties"
    group_item_label: "Invoked By"
  }

  dimension: event_properties__machine_address {
    type: string
    sql: ${TABLE}.event_properties.`Machine Address` ;;
    group_label: "Event Properties"
    group_item_label: "Machine Address"
  }

  dimension: event_properties__multiple_fop {
    type: yesno
    sql: ${TABLE}.event_properties.`Multiple FOP` ;;
    group_label: "Event Properties"
    group_item_label: "Multiple Fop"
  }

  dimension: event_properties__number_of_bags {
    type: number
    sql: ${TABLE}.event_properties.`Number of Bags` ;;
    group_label: "Event Properties"
    group_item_label: "Number of Bags"
  }

  dimension: event_properties__number_of_passengers {
    type: number
    sql: ${TABLE}.event_properties.`Number of Passengers` ;;
    group_label: "Event Properties"
    group_item_label: "Number of Passengers"
  }

  dimension: event_properties__number_of_segments {
    type: number
    sql: ${TABLE}.event_properties.`Number of Segments` ;;
    group_label: "Event Properties"
    group_item_label: "Number of Segments"
  }

  dimension: event_properties__origin {
    type: string
    sql: ${TABLE}.event_properties.Origin ;;
    group_label: "Event Properties"
    group_item_label: "Origin"
  }

  dimension: event_properties__os {
    type: string
    sql: ${TABLE}.event_properties.OS ;;
    group_label: "Event Properties"
    group_item_label: "OS"
  }

  dimension: event_properties__page {
    type: string
    sql: ${TABLE}.event_properties.Page ;;
    group_label: "Event Properties"
    group_item_label: "Page"
  }

  dimension: event_properties__paid {
    type: yesno
    sql: ${TABLE}.event_properties.Paid ;;
    group_label: "Event Properties"
    group_item_label: "Paid"
  }

  dimension: event_properties__payment_amount {
    type: number
    sql: ${TABLE}.event_properties.`Payment Amount` ;;
    group_label: "Event Properties"
    group_item_label: "Payment Amount"
  }

  dimension: event_properties__payment_currency {
    type: string
    sql: ${TABLE}.event_properties.`Payment Currency` ;;
    group_label: "Event Properties"
    group_item_label: "Payment Currency"
  }

  dimension: event_properties__payment_type {
    type: string
    sql: ${TABLE}.event_properties.`Payment Type` ;;
    group_label: "Event Properties"
    group_item_label: "Payment Type"
  }

  dimension: event_properties__prepaid {
    type: yesno
    sql: ${TABLE}.event_properties.Prepaid ;;
    group_label: "Event Properties"
    group_item_label: "Prepaid"
  }

  dimension: event_properties__quantity {
    type: number
    sql: ${TABLE}.event_properties.Quantity ;;
    group_label: "Event Properties"
    group_item_label: "Quantity"
  }

  dimension: event_properties__relaunched {
    type: yesno
    sql: ${TABLE}.event_properties.Relaunched ;;
    group_label: "Event Properties"
    group_item_label: "Relaunched"
  }

  dimension: event_properties__sam_page {
    type: string
    sql: ${TABLE}.event_properties.sam_page ;;
    group_label: "Event Properties"
    group_item_label: "Sam Page"
  }

  dimension: event_properties__search_type {
    type: string
    sql: ${TABLE}.event_properties.`Search Type` ;;
    group_label: "Event Properties"
    group_item_label: "Search Type"
  }

  dimension: event_properties__seat_count {
    type: number
    sql: ${TABLE}.event_properties.`Seat Count` ;;
    group_label: "Event Properties"
    group_item_label: "Seat Count"
  }

  dimension: event_properties__short_check {
    type: yesno
    sql: ${TABLE}.event_properties.`Short Check` ;;
    group_label: "Event Properties"
    group_item_label: "Short Check"
  }

  dimension: event_properties__split_payment {
    type: yesno
    sql: ${TABLE}.event_properties.`Split Payment` ;;
    group_label: "Event Properties"
    group_item_label: "Split Payment"
  }

  dimension: event_properties__station_number {
    type: number
    sql: ${TABLE}.event_properties.`Station Number` ;;
    group_label: "Event Properties"
    group_item_label: "Station Number"
  }

  dimension: event_properties__sub_code {
    type: string
    sql: ${TABLE}.event_properties.`Sub Code` ;;
    group_label: "Event Properties"
    group_item_label: "Sub Code"
  }

  dimension: event_properties__success {
    type: yesno
    sql: ${TABLE}.event_properties.Success ;;
    group_label: "Event Properties"
    group_item_label: "Success"
  }

  dimension: event_properties__total_waived_items {
    type: number
    sql: ${TABLE}.event_properties.`Total Waived Items` ;;
    group_label: "Event Properties"
    group_item_label: "Total Waived Items"
  }

  dimension: event_properties__type {
    type: string
    sql: ${TABLE}.event_properties.Type ;;
    group_label: "Event Properties"
    group_item_label: "Type"
  }

  dimension: event_properties__waived {
    type: yesno
    sql: ${TABLE}.event_properties.Waived ;;
    group_label: "Event Properties"
    group_item_label: "Waived"
  }

  dimension_group: event_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
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

  dimension_group: processed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.processed_time ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sam_insert_id {
    type: string
    sql: ${TABLE}.sam_insert_id ;;
  }

  dimension: sam_insert_key {
    type: string
    sql: ${TABLE}.sam_insert_key ;;
  }

  dimension: sam_schema {
    type: string
    sql: ${TABLE}.sam_schema ;;
  }

  dimension: sample_rate {
    type: string
    sql: ${TABLE}.sample_rate ;;
  }

  dimension_group: server_received {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.server_received_time ;;
  }

  dimension_group: server_upload {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
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

  dimension: user_properties__agent_id {
    type: string
    sql: ${TABLE}.user_properties.`Agent ID` ;;
    group_label: "User Properties"
    group_item_label: "Agent ID"
  }

  dimension: user_properties__conversation_id {
    type: string
    sql: ${TABLE}.user_properties.conversationId ;;
    group_label: "User Properties"
    group_item_label: "Conversation ID"
  }

  dimension: user_properties__current_city {
    type: string
    sql: ${TABLE}.user_properties.`Current City` ;;
    group_label: "User Properties"
    group_item_label: "Current City"
  }

  dimension: user_properties__environment {
    type: string
    sql: ${TABLE}.user_properties.environment ;;
    group_label: "User Properties"
    group_item_label: "Environment"
  }

  dimension: user_properties__machine_address {
    type: string
    sql: ${TABLE}.user_properties.`Machine Address` ;;
    group_label: "User Properties"
    group_item_label: "Machine Address"
  }

  dimension: user_properties__os {
    type: string
    sql: ${TABLE}.user_properties.OS ;;
    group_label: "User Properties"
    group_item_label: "OS"
  }

  dimension: user_properties__relaunched {
    type: yesno
    sql: ${TABLE}.user_properties.Relaunched ;;
    group_label: "User Properties"
    group_item_label: "Relaunched"
  }

  dimension: user_properties__station_number {
    type: number
    sql: ${TABLE}.user_properties.`Station Number` ;;
    group_label: "User Properties"
    group_item_label: "Station Number"
  }

  dimension: user_properties__storefront {
    type: string
    sql: ${TABLE}.user_properties.storefront ;;
    group_label: "User Properties"
    group_item_label: "Storefront"
  }

  dimension: user_properties__user_id {
    type: string
    sql: ${TABLE}.user_properties.user_id ;;
    group_label: "User Properties"
    group_item_label: "User ID"
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
    drill_fields: [version_name, os_name, event_properties__commercial_name]
  }
}
