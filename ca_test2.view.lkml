view: ca_test2 {
  sql_table_name: looker_scratch.ca_test2 ;;

  dimension: age_at_index_date {
    type: number
    sql: ${TABLE}."Age at Index Date" ;;
  }

  dimension: age_tiers  {
    type: tier
    style: integer
    tiers: [0,10,20,30,40,50,60,70,80,90,100,110]
    sql: ${age_at_index_date} ;;
  }

  dimension_group: date_of_birth {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}."Date Of Birth" ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension_group: event_date {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.EventDateTime ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: group_no {
    type: number
    sql: ${TABLE}.GroupNo ;;
  }

  dimension: mrn {
    type: string
    sql: ${TABLE}.MRN ;;
  }

  dimension: patient_address {
    type: string
    sql: ${TABLE}."Patient Address" ;;
  }

  dimension: patient_id {
    type: number
    sql: ${TABLE}.PatientID ;;
  }

  dimension: patient_name {
    type: string
    sql: ${TABLE}."Patient Name" ;;
  }

  dimension: patient_phone {
    type: string
    sql: ${TABLE}."Patient Phone" ;;
  }

  dimension: preferred_language {
    type: string
    sql: ${TABLE}."Preferred Language" ;;
  }

  dimension: primary_care_md_set {
    type: string
    sql: ${TABLE}."Primary Care MD Set" ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.Race ;;
  }

  dimension: social_security_number_present {
    type: string
    sql: ${TABLE}."Social Security Number Present" ;;
  }

  dimension: zip_code_set {
    type: string
    sql: ${TABLE}."Zip Code Set" ;;
  }

  measure: count {
    type: count
    drill_fields: [patient_name]
  }
}
