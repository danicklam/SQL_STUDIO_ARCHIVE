/* ETLS MODULES */


sel etl_module_run_id, count (*)  FROM



--EDW_SCVER_CODA_ACCS_VIEWS.v_address_cluster, 
EDW_SCVER_CODA_ACCS_VIEWS.v_address_ops_hierarchy, 
EDW_SCVER_CODA_ACCS_VIEWS.v_ADDRESS_TYPE, 
EDW_SCVER_CODA_ACCS_VIEWS.v_agmt_rdrctn_dtl, 
EDW_SCVER_CODA_ACCS_VIEWS.v_agmt_term, 
EDW_SCVER_CODA_ACCS_VIEWS.v_agreement, 
EDW_SCVER_CODA_ACCS_VIEWS.v_agreement_related, 
EDW_SCVER_CODA_ACCS_VIEWS.v_agreement_status_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_agreement_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_base_mist_data, 
EDW_SCVER_CODA_ACCS_VIEWS.v_base_mpe, 
EDW_SCVER_CODA_ACCS_VIEWS.v_base_pre_adv_item_detail, 
EDW_SCVER_CODA_ACCS_VIEWS.v_base_pre_advice, 
EDW_SCVER_CODA_ACCS_VIEWS.v_carrier_sort, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_BATCH_QUEUE, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_CREDO_IND_IN, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_CREDO_ORG_IN, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_IN_ADDRESS, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_IN_BUSINESS, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_IN_BUSINESS_CONTACTS, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_IN_IDENTITY, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_mars_ind_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_mars_org_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_match_results, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_mears_adf_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_OUT_BUSINESS, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_out_business_contacts, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_OUT_IDENTITY, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_parcels_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_party_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_POISE_IN, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_rmgtt_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_siebel_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_CC_SPS_IN, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_tods_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cc_tods_sender_in, 
EDW_SCVER_CODA_ACCS_VIEWS.v_channel, 
EDW_SCVER_CODA_ACCS_VIEWS.v_country_exception, 
EDW_SCVER_CODA_ACCS_VIEWS.v_cpac_np_address_change_log, 
EDW_SCVER_CODA_ACCS_VIEWS.v_data_source_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_delivery, 
EDW_SCVER_CODA_ACCS_VIEWS.v_delivery_exception, 
EDW_SCVER_CODA_ACCS_VIEWS.v_DELIVERY_POINT_ADDRESS, 
EDW_SCVER_CODA_ACCS_VIEWS.v_dim_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_dim_address_hazard, 
EDW_SCVER_CODA_ACCS_VIEWS.v_eib_item, 
EDW_SCVER_CODA_ACCS_VIEWS.v_eib_manifest_items, 
EDW_SCVER_CODA_ACCS_VIEWS.v_eib_shipper_piece, 
EDW_SCVER_CODA_ACCS_VIEWS.v_eib_supply_chain, 
EDW_SCVER_CODA_ACCS_VIEWS.v_electronic_address, 

sel * from 
EDW_SCVER_CODA_ACCS_VIEWS.v_etl_job_details
order by module_run_id desc;
sel * from
EDW_SCVER_CODA_ACCS_VIEWS.v_etl_module
order by module_id desc;
sel * from
EDW_SCVER_CODA_ACCS_VIEWS.v_etl_module_details; 
sel * from
EDW_SCVER_CODA_ACCS_VIEWS.v_etl_module_instance;




EDW_SCVER_CODA_ACCS_VIEWS.v_EVENT, 
EDW_SCVER_CODA_ACCS_VIEWS.v_event_party, 
EDW_SCVER_CODA_ACCS_VIEWS.v_event_party_role, 
EDW_SCVER_CODA_ACCS_VIEWS.v_event_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_exception_reason, 
EDW_SCVER_CODA_ACCS_VIEWS.v_file_load_control, 
EDW_SCVER_CODA_ACCS_VIEWS.v_individual, 
EDW_SCVER_CODA_ACCS_VIEWS.v_item, 
EDW_SCVER_CODA_ACCS_VIEWS.v_location, 
EDW_SCVER_CODA_ACCS_VIEWS.v_location_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_location_dimaddress_xref, 
EDW_SCVER_CODA_ACCS_VIEWS.v_location_hierarchy_current, 
EDW_SCVER_CODA_ACCS_VIEWS.v_mears_adf_stg, 
EDW_SCVER_CODA_ACCS_VIEWS.v_mears_events, 
EDW_SCVER_CODA_ACCS_VIEWS.v_mears_shipper_piece, 
EDW_SCVER_CODA_ACCS_VIEWS.v_opportunity, 
EDW_SCVER_CODA_ACCS_VIEWS.v_OPS_LOCATION_CURRENT, 
EDW_SCVER_CODA_ACCS_VIEWS.v_organization, 
EDW_SCVER_CODA_ACCS_VIEWS.v_organization_contacts, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_building_names, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_county_alias, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_county_name, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_county_type,
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_del_point_alias_category, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_del_point_alias_currency, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_delivery_point_alias, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_localities, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_locality_alias, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_multiple_residences, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_organisation, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_postcode_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_postzon, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_sub_building_names, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_thoroughfare, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_thoroughfare_alias, 
EDW_SCVER_CODA_ACCS_VIEWS.v_paf_thoroughfare_desc, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party_address_party_desc, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party_agreement, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party_kog_xref, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party_privacy_preferences, 
EDW_SCVER_CODA_ACCS_VIEWS.v_PARTY_RELATED, 
EDW_SCVER_CODA_ACCS_VIEWS.v_PARTY_RELATIONSHIP_ROLE, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party_source_dtl, 
EDW_SCVER_CODA_ACCS_VIEWS.v_party_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_pcl_ana_rep, 
EDW_SCVER_CODA_ACCS_VIEWS.v_pcl_event_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_pfw_item, 
EDW_SCVER_CODA_ACCS_VIEWS.v_po_box_address_dtl, 
EDW_SCVER_CODA_ACCS_VIEWS.v_poise_consignment, 
EDW_SCVER_CODA_ACCS_VIEWS.v_poise_postal_piece_event, 
EDW_SCVER_CODA_ACCS_VIEWS.v_poise_shipper_piece, 
EDW_SCVER_CODA_ACCS_VIEWS.v_postal_class_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_postal_event, 
EDW_SCVER_CODA_ACCS_VIEWS.v_postal_event_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_postal_exception, 
EDW_SCVER_CODA_ACCS_VIEWS.v_POSTAL_PIECE_EVENT, 
EDW_SCVER_CODA_ACCS_VIEWS.v_postal_piece_type, 
EDW_SCVER_CODA_ACCS_VIEWS.v_preadvice_receipt_event, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_address_dlvry_route, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_coda_multi_residency, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_credo_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_kog_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_kog_party_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_kog_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_kog_unstctd_party_addr, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_mars_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_mears_adf_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_parcels_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_poise_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_rksp_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_rksp_party, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_rksp_party_activity, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_rksp_party_transaction, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_rksp_piece_event, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_rmgtt_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_siebel_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_siebel_opp, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_siebel_order, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_siebel_party, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_siebel_srvreq, 
EDW_SCVER_CODA_ACCS_VIEWS.v_PREP_SPS_SCV, 
EDW_SCVER_CODA_ACCS_VIEWS.v_prep_tods_scv, 
EDW_SCVER_CODA_ACCS_VIEWS.v_quality_contact, 
EDW_SCVER_CODA_ACCS_VIEWS.v_qv_addr_cov_daily, 
EDW_SCVER_CODA_ACCS_VIEWS.v_qv_cc_scv_addr_cov_daily, 
EDW_SCVER_CODA_ACCS_VIEWS.v_qv_cc_scv_daily_run, 
EDW_SCVER_CODA_ACCS_VIEWS.v_qv_scv_daily_run, 
EDW_SCVER_CODA_ACCS_VIEWS.v_qv_scv_daily_run2, 
EDW_SCVER_CODA_ACCS_VIEWS.v_qv_test_sample, 
EDW_SCVER_CODA_ACCS_VIEWS.v_revenue, 
EDW_SCVER_CODA_ACCS_VIEWS.v_route, 
EDW_SCVER_CODA_ACCS_VIEWS.v_route_delivery_schedule, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rpt_mearssrt_newbuss_tab1, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rpt_mearssrt_newbuss_tab2, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rpt_mearssrt_newbuss_tab3, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_callrate, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_ea_party_actvty, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_hazards_hs, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_mears_sortation, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_mears_srtn_bsns, 
EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_multi_residency, 
EDW_SCVER_CODA_ACCS_VIEWS.v_sales_return_line, 
EDW_SCVER_CODA_ACCS_VIEWS.v_sales_transaction, 
EDW_SCVER_CODA_ACCS_VIEWS.v_sales_transaction_line, 
EDW_SCVER_CODA_ACCS_VIEWS.v_sales_transaction_line_dtls, 
EDW_SCVER_CODA_ACCS_VIEWS.v_scv_non_postal_address_xref, 
EDW_SCVER_CODA_ACCS_VIEWS.v_scv_party_create_xref, 
EDW_SCVER_CODA_ACCS_VIEWS.v_scv_party_xtn_fields_xref, 
EDW_SCVER_CODA_ACCS_VIEWS.v_scv_src_party_xref, 
EDW_SCVER_CODA_ACCS_VIEWS.v_scver_stream_map, 
EDW_SCVER_CODA_ACCS_VIEWS.v_scver_value_map, 
EDW_SCVER_CODA_ACCS_VIEWS.v_SERVICEPOINT_EVENT, 
EDW_SCVER_CODA_ACCS_VIEWS.v_SERVICEPOINT_EVENT_DETAIL, 
EDW_SCVER_CODA_ACCS_VIEWS.v_SHIPPER_PIECE, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_bus_prof, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_common, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_common_ref, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_delivery_office, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_fraud_addr, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_media, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_payment, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_redir_flag, 
EDW_SCVER_CODA_ACCS_VIEWS.v_stg_credo_title_list, 
EDW_SCVER_CODA_ACCS_VIEWS.v_telephonic_address, 
EDW_SCVER_CODA_ACCS_VIEWS.v_trak_zero_collection, 
EDW_SCVER_CODA_ACCS_VIEWS.v_wrk_kognitio_party, 
EDW_SCVER_CODA_ACCS_VIEWS.v_wrk_kognitio_party_field, 
EDW_SCVER_CODA_ACCS_VIEWS.v_wrk_tods_scv