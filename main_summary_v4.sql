SELECT
  * REPLACE (
    NULLIF(country, '??') AS country,
    NULLIF(city, '??') AS city,
    NULLIF(geo_subdivision1, '??') AS geo_subdivision1,
    NULLIF(geo_subdivision2, '??') AS geo_subdivision2,
    ARRAY(SELECT * FROM UNNEST(active_addons.list)) AS active_addons,
    ARRAY(SELECT * FROM UNNEST(antispyware.list)) AS antispyware,
    ARRAY(SELECT * FROM UNNEST(antivirus.list)) AS antivirus,
    boolean_addon_scalars.key_value AS boolean_addon_scalars,
    ARRAY(SELECT * FROM UNNEST(disabled_addons_ids.list)) AS disabled_addons_ids,
    ARRAY(
      SELECT
        *
      FROM
        UNNEST(environment_settings_intl_accept_languages.list)
    ) AS environment_settings_intl_accept_languages,
    ARRAY(
      SELECT
        *
      FROM
        UNNEST(environment_settings_intl_app_locales.list)
    ) AS environment_settings_intl_app_locales,
    ARRAY(
      SELECT
        *
      FROM
        UNNEST(environment_settings_intl_available_locales.list)
    ) AS environment_settings_intl_available_locales,
    ARRAY(
      SELECT
        *
      FROM
        UNNEST(environment_settings_intl_regional_prefs_locales.list)
    ) AS environment_settings_intl_regional_prefs_locales,
    ARRAY(
      SELECT
        *
      FROM
        UNNEST(environment_settings_intl_requested_locales.list)
    ) AS environment_settings_intl_requested_locales,
    ARRAY(
      SELECT
        *
      FROM
        UNNEST(environment_settings_intl_system_locales.list)
    ) AS environment_settings_intl_system_locales,
    ARRAY(
      SELECT AS STRUCT
        _0.element.* REPLACE (_0.element.map_values.key_value AS map_values)
      FROM
        UNNEST(events.list) AS _0
    ) AS events,
    experiments.key_value AS experiments,
    ARRAY(
      SELECT AS STRUCT
        * REPLACE (_0.value.key_value AS value)
      FROM
        UNNEST(experiments_details.key_value) AS _0
    ) AS experiments_details,
    ARRAY(SELECT * FROM UNNEST(firewall.list)) AS firewall,
    STRUCT(histogram_content_cert_validation_success_by_ca.key_value AS list) AS histogram_content_cert_validation_success_by_ca,
    STRUCT(histogram_content_checkerboard_severity.key_value AS list) AS histogram_content_checkerboard_severity,
    STRUCT(histogram_content_composite_time.key_value AS list) AS histogram_content_composite_time,
    STRUCT(histogram_content_content_paint_time.key_value AS list) AS histogram_content_content_paint_time,
    STRUCT(histogram_content_cycle_collector_max_pause.key_value AS list) AS histogram_content_cycle_collector_max_pause,
    STRUCT(histogram_content_devtools_accessibility_picker_time_active_seconds.key_value AS list) AS histogram_content_devtools_accessibility_picker_time_active_seconds,
    STRUCT(histogram_content_devtools_accessibility_service_time_active_seconds.key_value AS list) AS histogram_content_devtools_accessibility_service_time_active_seconds,
    STRUCT(histogram_content_devtools_accessibility_time_active_seconds.key_value AS list) AS histogram_content_devtools_accessibility_time_active_seconds,
    STRUCT(histogram_content_devtools_toolbox_time_active_seconds.key_value AS list) AS histogram_content_devtools_toolbox_time_active_seconds,
    STRUCT(histogram_content_fx_new_window_ms.key_value AS list) AS histogram_content_fx_new_window_ms,
    STRUCT(histogram_content_fx_page_load_ms_2.key_value AS list) AS histogram_content_fx_page_load_ms_2,
    STRUCT(histogram_content_fx_searchbar_selected_result_method.key_value AS list) AS histogram_content_fx_searchbar_selected_result_method,
    STRUCT(histogram_content_fx_session_restore_restore_window_ms.key_value AS list) AS histogram_content_fx_session_restore_restore_window_ms,
    STRUCT(histogram_content_fx_session_restore_startup_init_session_ms.key_value AS list) AS histogram_content_fx_session_restore_startup_init_session_ms,
    STRUCT(histogram_content_fx_session_restore_startup_onload_initial_window_ms.key_value AS list) AS histogram_content_fx_session_restore_startup_onload_initial_window_ms,
    STRUCT(histogram_content_fx_tab_close_time_anim_ms.key_value AS list) AS histogram_content_fx_tab_close_time_anim_ms,
    STRUCT(histogram_content_fx_tab_switch_update_ms.key_value AS list) AS histogram_content_fx_tab_switch_update_ms,
    STRUCT(histogram_content_fx_urlbar_selected_result_index.key_value AS list) AS histogram_content_fx_urlbar_selected_result_index,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_content_fx_urlbar_selected_result_index_by_type.key_value) AS _0
      ) AS list
    ) AS histogram_content_fx_urlbar_selected_result_index_by_type,
    STRUCT(histogram_content_fx_urlbar_selected_result_method.key_value AS list) AS histogram_content_fx_urlbar_selected_result_method,
    STRUCT(histogram_content_fx_urlbar_selected_result_type.key_value AS list) AS histogram_content_fx_urlbar_selected_result_type,
    STRUCT(histogram_content_gc_animation_ms.key_value AS list) AS histogram_content_gc_animation_ms,
    STRUCT(histogram_content_gc_max_pause_ms.key_value AS list) AS histogram_content_gc_max_pause_ms,
    STRUCT(histogram_content_gc_max_pause_ms_2.key_value AS list) AS histogram_content_gc_max_pause_ms_2,
    STRUCT(histogram_content_geolocation_request_granted.key_value AS list) AS histogram_content_geolocation_request_granted,
    STRUCT(histogram_content_ghost_windows.key_value AS list) AS histogram_content_ghost_windows,
    STRUCT(histogram_content_gpu_process_initialization_time_ms.key_value AS list) AS histogram_content_gpu_process_initialization_time_ms,
    STRUCT(histogram_content_gpu_process_launch_time_ms_2.key_value AS list) AS histogram_content_gpu_process_launch_time_ms_2,
    STRUCT(histogram_content_http_channel_disposition.key_value AS list) AS histogram_content_http_channel_disposition,
    STRUCT(histogram_content_http_pageload_is_ssl.key_value AS list) AS histogram_content_http_pageload_is_ssl,
    STRUCT(histogram_content_http_transaction_is_ssl.key_value AS list) AS histogram_content_http_transaction_is_ssl,
    STRUCT(histogram_content_input_event_response_coalesced_ms.key_value AS list) AS histogram_content_input_event_response_coalesced_ms,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_content_ipc_read_main_thread_latency_ms.key_value) AS _0
      ) AS list
    ) AS histogram_content_ipc_read_main_thread_latency_ms,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_content_memory_distribution_among_content.key_value) AS _0
      ) AS list
    ) AS histogram_content_memory_distribution_among_content,
    STRUCT(histogram_content_memory_heap_allocated.key_value AS list) AS histogram_content_memory_heap_allocated,
    STRUCT(histogram_content_memory_resident_fast.key_value AS list) AS histogram_content_memory_resident_fast,
    STRUCT(histogram_content_memory_total.key_value AS list) AS histogram_content_memory_total,
    STRUCT(histogram_content_memory_unique.key_value AS list) AS histogram_content_memory_unique,
    STRUCT(histogram_content_memory_unique_content_startup.key_value AS list) AS histogram_content_memory_unique_content_startup,
    STRUCT(histogram_content_memory_vsize.key_value AS list) AS histogram_content_memory_vsize,
    STRUCT(histogram_content_memory_vsize_max_contiguous.key_value AS list) AS histogram_content_memory_vsize_max_contiguous,
    STRUCT(histogram_content_network_cache_metadata_first_read_time_ms.key_value AS list) AS histogram_content_network_cache_metadata_first_read_time_ms,
    STRUCT(histogram_content_network_cache_v2_hit_time_ms.key_value AS list) AS histogram_content_network_cache_v2_hit_time_ms,
    STRUCT(histogram_content_network_cache_v2_miss_time_ms.key_value AS list) AS histogram_content_network_cache_v2_miss_time_ms,
    STRUCT(histogram_content_places_autocomplete_6_first_results_time_ms.key_value AS list) AS histogram_content_places_autocomplete_6_first_results_time_ms,
    STRUCT(histogram_content_plugin_shutdown_ms.key_value AS list) AS histogram_content_plugin_shutdown_ms,
    STRUCT(histogram_content_pwmgr_form_autofill_result.key_value AS list) AS histogram_content_pwmgr_form_autofill_result,
    STRUCT(histogram_content_pwmgr_login_page_safety.key_value AS list) AS histogram_content_pwmgr_login_page_safety,
    STRUCT(histogram_content_sandbox_rejected_syscalls.key_value AS list) AS histogram_content_sandbox_rejected_syscalls,
    STRUCT(histogram_content_search_reset_result.key_value AS list) AS histogram_content_search_reset_result,
    STRUCT(histogram_content_search_service_init_ms.key_value AS list) AS histogram_content_search_service_init_ms,
    STRUCT(histogram_content_ssl_handshake_result.key_value AS list) AS histogram_content_ssl_handshake_result,
    STRUCT(histogram_content_ssl_handshake_version.key_value AS list) AS histogram_content_ssl_handshake_version,
    STRUCT(histogram_content_ssl_tls12_intolerance_reason_pre.key_value AS list) AS histogram_content_ssl_tls12_intolerance_reason_pre,
    STRUCT(histogram_content_ssl_tls13_intolerance_reason_pre.key_value AS list) AS histogram_content_ssl_tls13_intolerance_reason_pre,
    STRUCT(histogram_content_time_to_dom_complete_ms.key_value AS list) AS histogram_content_time_to_dom_complete_ms,
    STRUCT(histogram_content_time_to_dom_content_loaded_end_ms.key_value AS list) AS histogram_content_time_to_dom_content_loaded_end_ms,
    STRUCT(histogram_content_time_to_dom_content_loaded_start_ms.key_value AS list) AS histogram_content_time_to_dom_content_loaded_start_ms,
    STRUCT(histogram_content_time_to_dom_interactive_ms.key_value AS list) AS histogram_content_time_to_dom_interactive_ms,
    STRUCT(histogram_content_time_to_dom_loading_ms.key_value AS list) AS histogram_content_time_to_dom_loading_ms,
    STRUCT(histogram_content_time_to_first_click_ms.key_value AS list) AS histogram_content_time_to_first_click_ms,
    STRUCT(histogram_content_time_to_first_interaction_ms.key_value AS list) AS histogram_content_time_to_first_interaction_ms,
    STRUCT(histogram_content_time_to_first_key_input_ms.key_value AS list) AS histogram_content_time_to_first_key_input_ms,
    STRUCT(histogram_content_time_to_first_mouse_move_ms.key_value AS list) AS histogram_content_time_to_first_mouse_move_ms,
    STRUCT(histogram_content_time_to_first_scroll_ms.key_value AS list) AS histogram_content_time_to_first_scroll_ms,
    STRUCT(histogram_content_time_to_load_event_end_ms.key_value AS list) AS histogram_content_time_to_load_event_end_ms,
    STRUCT(histogram_content_time_to_load_event_start_ms.key_value AS list) AS histogram_content_time_to_load_event_start_ms,
    STRUCT(histogram_content_time_to_non_blank_paint_ms.key_value AS list) AS histogram_content_time_to_non_blank_paint_ms,
    STRUCT(histogram_content_time_to_response_start_ms.key_value AS list) AS histogram_content_time_to_response_start_ms,
    STRUCT(histogram_content_tracking_protection_enabled.key_value AS list) AS histogram_content_tracking_protection_enabled,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_content_uptake_remote_content_result_1.key_value) AS _0
      ) AS list
    ) AS histogram_content_uptake_remote_content_result_1,
    STRUCT(histogram_content_webext_content_script_injection_ms.key_value AS list) AS histogram_content_webext_content_script_injection_ms,
    STRUCT(histogram_content_webext_storage_local_get_ms.key_value AS list) AS histogram_content_webext_storage_local_get_ms,
    STRUCT(histogram_content_webext_storage_local_set_ms.key_value AS list) AS histogram_content_webext_storage_local_set_ms,
    STRUCT(histogram_content_webvr_time_spent_viewing_in_2d.key_value AS list) AS histogram_content_webvr_time_spent_viewing_in_2d,
    STRUCT(histogram_content_webvr_users_view_in.key_value AS list) AS histogram_content_webvr_users_view_in,
    STRUCT(histogram_gpu_checkerboard_severity.key_value AS list) AS histogram_gpu_checkerboard_severity,
    STRUCT(histogram_gpu_composite_time.key_value AS list) AS histogram_gpu_composite_time,
    STRUCT(histogram_gpu_content_frame_time.key_value AS list) AS histogram_gpu_content_frame_time,
    STRUCT(histogram_gpu_gpu_process_initialization_time_ms.key_value AS list) AS histogram_gpu_gpu_process_initialization_time_ms,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_gpu_ipc_read_main_thread_latency_ms.key_value) AS _0
      ) AS list
    ) AS histogram_gpu_ipc_read_main_thread_latency_ms,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_gpu_uptake_remote_content_result_1.key_value) AS _0
      ) AS list
    ) AS histogram_gpu_uptake_remote_content_result_1,
    STRUCT(histogram_gpu_webvr_time_spent_viewing_in_oculus.key_value AS list) AS histogram_gpu_webvr_time_spent_viewing_in_oculus,
    STRUCT(histogram_gpu_webvr_time_spent_viewing_in_openvr.key_value AS list) AS histogram_gpu_webvr_time_spent_viewing_in_openvr,
    STRUCT(histogram_gpu_webvr_users_view_in.key_value AS list) AS histogram_gpu_webvr_users_view_in,
    STRUCT(histogram_parent_a11y_consumers.key_value AS list) AS histogram_parent_a11y_consumers,
    STRUCT(histogram_parent_a11y_instantiated_flag.key_value AS list) AS histogram_parent_a11y_instantiated_flag,
    STRUCT(histogram_parent_cert_validation_success_by_ca.key_value AS list) AS histogram_parent_cert_validation_success_by_ca,
    STRUCT(histogram_parent_checkerboard_severity.key_value AS list) AS histogram_parent_checkerboard_severity,
    STRUCT(histogram_parent_composite_time.key_value AS list) AS histogram_parent_composite_time,
    STRUCT(histogram_parent_content_frame_time.key_value AS list) AS histogram_parent_content_frame_time,
    STRUCT(histogram_parent_content_paint_time.key_value AS list) AS histogram_parent_content_paint_time,
    STRUCT(histogram_parent_cookie_behavior.key_value AS list) AS histogram_parent_cookie_behavior,
    STRUCT(histogram_parent_cycle_collector_max_pause.key_value AS list) AS histogram_parent_cycle_collector_max_pause,
    STRUCT(histogram_parent_devtools_about_devtools_opened_key.key_value AS list) AS histogram_parent_devtools_about_devtools_opened_key,
    STRUCT(histogram_parent_devtools_about_devtools_opened_reason.key_value AS list) AS histogram_parent_devtools_about_devtools_opened_reason,
    STRUCT(histogram_parent_devtools_accessibility_picker_time_active_seconds.key_value AS list) AS histogram_parent_devtools_accessibility_picker_time_active_seconds,
    STRUCT(histogram_parent_devtools_accessibility_service_time_active_seconds.key_value AS list) AS histogram_parent_devtools_accessibility_service_time_active_seconds,
    STRUCT(histogram_parent_devtools_accessibility_time_active_seconds.key_value AS list) AS histogram_parent_devtools_accessibility_time_active_seconds,
    STRUCT(histogram_parent_devtools_entry_point.key_value AS list) AS histogram_parent_devtools_entry_point,
    STRUCT(histogram_parent_devtools_fonteditor_font_type_displayed.key_value AS list) AS histogram_parent_devtools_fonteditor_font_type_displayed,
    STRUCT(histogram_parent_devtools_fonteditor_n_font_axes.key_value AS list) AS histogram_parent_devtools_fonteditor_n_font_axes,
    STRUCT(histogram_parent_devtools_fonteditor_n_fonts_rendered.key_value AS list) AS histogram_parent_devtools_fonteditor_n_fonts_rendered,
    STRUCT(histogram_parent_devtools_toolbox_time_active_seconds.key_value AS list) AS histogram_parent_devtools_toolbox_time_active_seconds,
    STRUCT(histogram_parent_dns_failed_lookup_time.key_value AS list) AS histogram_parent_dns_failed_lookup_time,
    STRUCT(histogram_parent_dns_lookup_time.key_value AS list) AS histogram_parent_dns_lookup_time,
    STRUCT(histogram_parent_fx_new_window_ms.key_value AS list) AS histogram_parent_fx_new_window_ms,
    STRUCT(histogram_parent_fx_page_load_ms_2.key_value AS list) AS histogram_parent_fx_page_load_ms_2,
    STRUCT(histogram_parent_fx_searchbar_selected_result_method.key_value AS list) AS histogram_parent_fx_searchbar_selected_result_method,
    STRUCT(histogram_parent_fx_session_restore_restore_window_ms.key_value AS list) AS histogram_parent_fx_session_restore_restore_window_ms,
    STRUCT(histogram_parent_fx_session_restore_startup_init_session_ms.key_value AS list) AS histogram_parent_fx_session_restore_startup_init_session_ms,
    STRUCT(histogram_parent_fx_session_restore_startup_onload_initial_window_ms.key_value AS list) AS histogram_parent_fx_session_restore_startup_onload_initial_window_ms,
    STRUCT(histogram_parent_fx_tab_close_time_anim_ms.key_value AS list) AS histogram_parent_fx_tab_close_time_anim_ms,
    STRUCT(histogram_parent_fx_tab_switch_total_e10s_ms.key_value AS list) AS histogram_parent_fx_tab_switch_total_e10s_ms,
    STRUCT(histogram_parent_fx_tab_switch_update_ms.key_value AS list) AS histogram_parent_fx_tab_switch_update_ms,
    STRUCT(histogram_parent_fx_urlbar_selected_result_index.key_value AS list) AS histogram_parent_fx_urlbar_selected_result_index,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_parent_fx_urlbar_selected_result_index_by_type.key_value) AS _0
      ) AS list
    ) AS histogram_parent_fx_urlbar_selected_result_index_by_type,
    STRUCT(histogram_parent_fx_urlbar_selected_result_method.key_value AS list) AS histogram_parent_fx_urlbar_selected_result_method,
    STRUCT(histogram_parent_fx_urlbar_selected_result_type.key_value AS list) AS histogram_parent_fx_urlbar_selected_result_type,
    STRUCT(histogram_parent_gc_animation_ms.key_value AS list) AS histogram_parent_gc_animation_ms,
    STRUCT(histogram_parent_gc_max_pause_ms.key_value AS list) AS histogram_parent_gc_max_pause_ms,
    STRUCT(histogram_parent_gc_max_pause_ms_2.key_value AS list) AS histogram_parent_gc_max_pause_ms_2,
    STRUCT(histogram_parent_geolocation_request_granted.key_value AS list) AS histogram_parent_geolocation_request_granted,
    STRUCT(histogram_parent_ghost_windows.key_value AS list) AS histogram_parent_ghost_windows,
    STRUCT(histogram_parent_gpu_process_initialization_time_ms.key_value AS list) AS histogram_parent_gpu_process_initialization_time_ms,
    STRUCT(histogram_parent_gpu_process_launch_time_ms_2.key_value AS list) AS histogram_parent_gpu_process_launch_time_ms_2,
    STRUCT(histogram_parent_http_channel_disposition.key_value AS list) AS histogram_parent_http_channel_disposition,
    STRUCT(histogram_parent_http_pageload_is_ssl.key_value AS list) AS histogram_parent_http_pageload_is_ssl,
    STRUCT(histogram_parent_http_transaction_is_ssl.key_value AS list) AS histogram_parent_http_transaction_is_ssl,
    STRUCT(histogram_parent_input_event_response_coalesced_ms.key_value AS list) AS histogram_parent_input_event_response_coalesced_ms,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_parent_ipc_read_main_thread_latency_ms.key_value) AS _0
      ) AS list
    ) AS histogram_parent_ipc_read_main_thread_latency_ms,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_parent_memory_distribution_among_content.key_value) AS _0
      ) AS list
    ) AS histogram_parent_memory_distribution_among_content,
    STRUCT(histogram_parent_memory_heap_allocated.key_value AS list) AS histogram_parent_memory_heap_allocated,
    STRUCT(histogram_parent_memory_resident_fast.key_value AS list) AS histogram_parent_memory_resident_fast,
    STRUCT(histogram_parent_memory_total.key_value AS list) AS histogram_parent_memory_total,
    STRUCT(histogram_parent_memory_unique.key_value AS list) AS histogram_parent_memory_unique,
    STRUCT(histogram_parent_memory_vsize.key_value AS list) AS histogram_parent_memory_vsize,
    STRUCT(histogram_parent_memory_vsize_max_contiguous.key_value AS list) AS histogram_parent_memory_vsize_max_contiguous,
    STRUCT(histogram_parent_network_cache_metadata_first_read_time_ms.key_value AS list) AS histogram_parent_network_cache_metadata_first_read_time_ms,
    STRUCT(histogram_parent_network_cache_v2_hit_time_ms.key_value AS list) AS histogram_parent_network_cache_v2_hit_time_ms,
    STRUCT(histogram_parent_network_cache_v2_miss_time_ms.key_value AS list) AS histogram_parent_network_cache_v2_miss_time_ms,
    STRUCT(histogram_parent_places_autocomplete_6_first_results_time_ms.key_value AS list) AS histogram_parent_places_autocomplete_6_first_results_time_ms,
    STRUCT(histogram_parent_plugin_shutdown_ms.key_value AS list) AS histogram_parent_plugin_shutdown_ms,
    STRUCT(histogram_parent_pwmgr_blocklist_num_sites.key_value AS list) AS histogram_parent_pwmgr_blocklist_num_sites,
    STRUCT(histogram_parent_pwmgr_form_autofill_result.key_value AS list) AS histogram_parent_pwmgr_form_autofill_result,
    STRUCT(histogram_parent_pwmgr_login_last_used_days.key_value AS list) AS histogram_parent_pwmgr_login_last_used_days,
    STRUCT(histogram_parent_pwmgr_login_page_safety.key_value AS list) AS histogram_parent_pwmgr_login_page_safety,
    STRUCT(histogram_parent_pwmgr_manage_opened.key_value AS list) AS histogram_parent_pwmgr_manage_opened,
    STRUCT(histogram_parent_pwmgr_manage_visibility_toggled.key_value AS list) AS histogram_parent_pwmgr_manage_visibility_toggled,
    STRUCT(histogram_parent_pwmgr_num_passwords_per_hostname.key_value AS list) AS histogram_parent_pwmgr_num_passwords_per_hostname,
    STRUCT(histogram_parent_pwmgr_num_saved_passwords.key_value AS list) AS histogram_parent_pwmgr_num_saved_passwords,
    STRUCT(histogram_parent_pwmgr_prompt_remember_action.key_value AS list) AS histogram_parent_pwmgr_prompt_remember_action,
    STRUCT(histogram_parent_pwmgr_prompt_update_action.key_value AS list) AS histogram_parent_pwmgr_prompt_update_action,
    STRUCT(histogram_parent_pwmgr_saving_enabled.key_value AS list) AS histogram_parent_pwmgr_saving_enabled,
    STRUCT(histogram_parent_sandbox_rejected_syscalls.key_value AS list) AS histogram_parent_sandbox_rejected_syscalls,
    STRUCT(histogram_parent_search_reset_result.key_value AS list) AS histogram_parent_search_reset_result,
    STRUCT(histogram_parent_search_service_init_ms.key_value AS list) AS histogram_parent_search_service_init_ms,
    STRUCT(histogram_parent_ssl_handshake_result.key_value AS list) AS histogram_parent_ssl_handshake_result,
    STRUCT(histogram_parent_ssl_handshake_version.key_value AS list) AS histogram_parent_ssl_handshake_version,
    STRUCT(histogram_parent_ssl_tls12_intolerance_reason_pre.key_value AS list) AS histogram_parent_ssl_tls12_intolerance_reason_pre,
    STRUCT(histogram_parent_ssl_tls13_intolerance_reason_pre.key_value AS list) AS histogram_parent_ssl_tls13_intolerance_reason_pre,
    STRUCT(histogram_parent_time_to_first_click_ms.key_value AS list) AS histogram_parent_time_to_first_click_ms,
    STRUCT(histogram_parent_time_to_first_interaction_ms.key_value AS list) AS histogram_parent_time_to_first_interaction_ms,
    STRUCT(histogram_parent_time_to_first_key_input_ms.key_value AS list) AS histogram_parent_time_to_first_key_input_ms,
    STRUCT(histogram_parent_time_to_first_mouse_move_ms.key_value AS list) AS histogram_parent_time_to_first_mouse_move_ms,
    STRUCT(histogram_parent_time_to_first_scroll_ms.key_value AS list) AS histogram_parent_time_to_first_scroll_ms,
    STRUCT(histogram_parent_time_to_non_blank_paint_ms.key_value AS list) AS histogram_parent_time_to_non_blank_paint_ms,
    STRUCT(histogram_parent_time_to_response_start_ms.key_value AS list) AS histogram_parent_time_to_response_start_ms,
    STRUCT(histogram_parent_touch_enabled_device.key_value AS list) AS histogram_parent_touch_enabled_device,
    STRUCT(histogram_parent_tracking_protection_enabled.key_value AS list) AS histogram_parent_tracking_protection_enabled,
    STRUCT(histogram_parent_update_bits_result_complete.key_value AS list) AS histogram_parent_update_bits_result_complete,
    STRUCT(histogram_parent_update_bits_result_partial.key_value AS list) AS histogram_parent_update_bits_result_partial,
    STRUCT(histogram_parent_update_can_use_bits_notify.key_value AS list) AS histogram_parent_update_can_use_bits_notify,
    STRUCT(histogram_parent_update_download_code_complete.key_value AS list) AS histogram_parent_update_download_code_complete,
    STRUCT(histogram_parent_update_download_code_partial.key_value AS list) AS histogram_parent_update_download_code_partial,
    STRUCT(histogram_parent_update_state_code_complete_stage.key_value AS list) AS histogram_parent_update_state_code_complete_stage,
    STRUCT(histogram_parent_update_state_code_complete_startup.key_value AS list) AS histogram_parent_update_state_code_complete_startup,
    STRUCT(histogram_parent_update_state_code_partial_stage.key_value AS list) AS histogram_parent_update_state_code_partial_stage,
    STRUCT(histogram_parent_update_state_code_partial_startup.key_value AS list) AS histogram_parent_update_state_code_partial_startup,
    STRUCT(histogram_parent_update_status_error_code_complete_stage.key_value AS list) AS histogram_parent_update_status_error_code_complete_stage,
    STRUCT(histogram_parent_update_status_error_code_complete_startup.key_value AS list) AS histogram_parent_update_status_error_code_complete_startup,
    STRUCT(histogram_parent_update_status_error_code_partial_stage.key_value AS list) AS histogram_parent_update_status_error_code_partial_stage,
    STRUCT(histogram_parent_update_status_error_code_partial_startup.key_value AS list) AS histogram_parent_update_status_error_code_partial_startup,
    STRUCT(
      ARRAY(
        SELECT AS STRUCT
          * REPLACE (_0.value.key_value AS value)
        FROM
          UNNEST(histogram_parent_uptake_remote_content_result_1.key_value) AS _0
      ) AS list
    ) AS histogram_parent_uptake_remote_content_result_1,
    STRUCT(histogram_parent_webext_background_page_load_ms.key_value AS list) AS histogram_parent_webext_background_page_load_ms,
    STRUCT(histogram_parent_webext_browseraction_popup_open_ms.key_value AS list) AS histogram_parent_webext_browseraction_popup_open_ms,
    STRUCT(histogram_parent_webext_browseraction_popup_preload_result_count.key_value AS list) AS histogram_parent_webext_browseraction_popup_preload_result_count,
    STRUCT(histogram_parent_webext_content_script_injection_ms.key_value AS list) AS histogram_parent_webext_content_script_injection_ms,
    STRUCT(histogram_parent_webext_extension_startup_ms.key_value AS list) AS histogram_parent_webext_extension_startup_ms,
    STRUCT(histogram_parent_webext_pageaction_popup_open_ms.key_value AS list) AS histogram_parent_webext_pageaction_popup_open_ms,
    STRUCT(histogram_parent_webext_storage_local_get_ms.key_value AS list) AS histogram_parent_webext_storage_local_get_ms,
    STRUCT(histogram_parent_webext_storage_local_set_ms.key_value AS list) AS histogram_parent_webext_storage_local_set_ms,
    STRUCT(histogram_parent_webvr_time_spent_viewing_in_2d.key_value AS list) AS histogram_parent_webvr_time_spent_viewing_in_2d,
    STRUCT(histogram_parent_webvr_time_spent_viewing_in_oculus.key_value AS list) AS histogram_parent_webvr_time_spent_viewing_in_oculus,
    STRUCT(histogram_parent_webvr_time_spent_viewing_in_openvr.key_value AS list) AS histogram_parent_webvr_time_spent_viewing_in_openvr,
    STRUCT(histogram_parent_webvr_users_view_in.key_value AS list) AS histogram_parent_webvr_users_view_in,
    ARRAY(
      SELECT AS STRUCT
        * REPLACE (_0.value.key_value AS value)
      FROM
        UNNEST(keyed_boolean_addon_scalars.key_value) AS _0
    ) AS keyed_boolean_addon_scalars,
    ARRAY(
      SELECT AS STRUCT
        * REPLACE (_0.value.key_value AS value)
      FROM
        UNNEST(keyed_string_addon_scalars.key_value) AS _0
    ) AS keyed_string_addon_scalars,
    ARRAY(
      SELECT AS STRUCT
        * REPLACE (_0.value.key_value AS value)
      FROM
        UNNEST(keyed_uint_addon_scalars.key_value) AS _0
    ) AS keyed_uint_addon_scalars,
    popup_notification_stats.key_value AS popup_notification_stats,
    scalar_content_dom_event_confluence_load_count.key_value AS scalar_content_dom_event_confluence_load_count,
    scalar_content_dom_event_office_online_load_count.key_value AS scalar_content_dom_event_office_online_load_count,
    scalar_content_gfx_small_paint_phase_weight.key_value AS scalar_content_gfx_small_paint_phase_weight,
    scalar_content_images_webp_content_frequency.key_value AS scalar_content_images_webp_content_frequency,
    scalar_content_pictureinpicture_opened_method.key_value AS scalar_content_pictureinpicture_opened_method,
    scalar_content_telemetry_accumulate_unknown_histogram_keys.key_value AS scalar_content_telemetry_accumulate_unknown_histogram_keys,
    scalar_content_telemetry_event_counts.key_value AS scalar_content_telemetry_event_counts,
    scalar_content_webrtc_sdp_parser_diff.key_value AS scalar_content_webrtc_sdp_parser_diff,
    scalar_content_webrtc_video_recv_codec_used.key_value AS scalar_content_webrtc_video_recv_codec_used,
    scalar_content_webrtc_video_send_codec_used.key_value AS scalar_content_webrtc_video_send_codec_used,
    scalar_gpu_telemetry_accumulate_unknown_histogram_keys.key_value AS scalar_gpu_telemetry_accumulate_unknown_histogram_keys,
    scalar_gpu_telemetry_event_counts.key_value AS scalar_gpu_telemetry_event_counts,
    scalar_parent_a11y_theme.key_value AS scalar_parent_a11y_theme,
    scalar_parent_browser_engagement_navigation_about_home.key_value AS scalar_parent_browser_engagement_navigation_about_home,
    scalar_parent_browser_engagement_navigation_about_newtab.key_value AS scalar_parent_browser_engagement_navigation_about_newtab,
    scalar_parent_browser_engagement_navigation_contextmenu.key_value AS scalar_parent_browser_engagement_navigation_contextmenu,
    scalar_parent_browser_engagement_navigation_searchbar.key_value AS scalar_parent_browser_engagement_navigation_searchbar,
    scalar_parent_browser_engagement_navigation_urlbar.key_value AS scalar_parent_browser_engagement_navigation_urlbar,
    scalar_parent_browser_engagement_navigation_webextension.key_value AS scalar_parent_browser_engagement_navigation_webextension,
    scalar_parent_browser_errors_collected_count_by_filename.key_value AS scalar_parent_browser_errors_collected_count_by_filename,
    scalar_parent_browser_search_ad_clicks.key_value AS scalar_parent_browser_search_ad_clicks,
    scalar_parent_browser_search_with_ads.key_value AS scalar_parent_browser_search_with_ads,
    scalar_parent_devtools_accessibility_accessible_context_menu_item_activated.key_value AS scalar_parent_devtools_accessibility_accessible_context_menu_item_activated,
    scalar_parent_devtools_accessibility_audit_activated.key_value AS scalar_parent_devtools_accessibility_audit_activated,
    scalar_parent_devtools_accessibility_select_accessible_for_node.key_value AS scalar_parent_devtools_accessibility_select_accessible_for_node,
    scalar_parent_devtools_accessibility_simulation_activated.key_value AS scalar_parent_devtools_accessibility_simulation_activated,
    scalar_parent_devtools_current_theme.key_value AS scalar_parent_devtools_current_theme,
    scalar_parent_devtools_inspector_three_pane_enabled.key_value AS scalar_parent_devtools_inspector_three_pane_enabled,
    scalar_parent_devtools_responsive_open_trigger.key_value AS scalar_parent_devtools_responsive_open_trigger,
    scalar_parent_devtools_tool_registered.key_value AS scalar_parent_devtools_tool_registered,
    scalar_parent_devtools_toolbox_tabs_reordered.key_value AS scalar_parent_devtools_toolbox_tabs_reordered,
    scalar_parent_devtools_tooltip_shown.key_value AS scalar_parent_devtools_tooltip_shown,
    scalar_parent_extensions_updates_rdf.key_value AS scalar_parent_extensions_updates_rdf,
    scalar_parent_gfx_advanced_layers_failure_id.key_value AS scalar_parent_gfx_advanced_layers_failure_id,
    scalar_parent_images_webp_content_frequency.key_value AS scalar_parent_images_webp_content_frequency,
    scalar_parent_networking_data_transferred.key_value AS scalar_parent_networking_data_transferred,
    scalar_parent_networking_data_transferred_kb.key_value AS scalar_parent_networking_data_transferred_kb,
    scalar_parent_networking_data_transferred_v3_kb.key_value AS scalar_parent_networking_data_transferred_v3_kb,
    scalar_parent_normandy_recipe_freshness.key_value AS scalar_parent_normandy_recipe_freshness,
    scalar_parent_pictureinpicture_closed_method.key_value AS scalar_parent_pictureinpicture_closed_method,
    scalar_parent_preferences_browser_home_page_change.key_value AS scalar_parent_preferences_browser_home_page_change,
    scalar_parent_preferences_browser_home_page_count.key_value AS scalar_parent_preferences_browser_home_page_count,
    scalar_parent_preferences_search_query.key_value AS scalar_parent_preferences_search_query,
    scalar_parent_preferences_use_bookmark.key_value AS scalar_parent_preferences_use_bookmark,
    scalar_parent_preferences_use_current_page.key_value AS scalar_parent_preferences_use_current_page,
    scalar_parent_qm_origin_directory_unexpected_filename.key_value AS scalar_parent_qm_origin_directory_unexpected_filename,
    scalar_parent_resistfingerprinting_content_window_size.key_value AS scalar_parent_resistfingerprinting_content_window_size,
    scalar_parent_sandbox_no_job.key_value AS scalar_parent_sandbox_no_job,
    scalar_parent_security_client_cert.key_value AS scalar_parent_security_client_cert,
    scalar_parent_security_contentblocker_permissions.key_value AS scalar_parent_security_contentblocker_permissions,
    scalar_parent_security_pkcs11_modules_loaded.key_value AS scalar_parent_security_pkcs11_modules_loaded,
    scalar_parent_security_webauthn_used.key_value AS scalar_parent_security_webauthn_used,
    scalar_parent_services_sync_sync_login_state_transitions.key_value AS scalar_parent_services_sync_sync_login_state_transitions,
    scalar_parent_storage_sync_api_usage_items_stored.key_value AS scalar_parent_storage_sync_api_usage_items_stored,
    scalar_parent_storage_sync_api_usage_storage_consumed.key_value AS scalar_parent_storage_sync_api_usage_storage_consumed,
    scalar_parent_telemetry_accumulate_clamped_values.key_value AS scalar_parent_telemetry_accumulate_clamped_values,
    scalar_parent_telemetry_accumulate_unknown_histogram_keys.key_value AS scalar_parent_telemetry_accumulate_unknown_histogram_keys,
    scalar_parent_telemetry_event_counts.key_value AS scalar_parent_telemetry_event_counts,
    scalar_parent_telemetry_keyed_scalars_exceed_limit.key_value AS scalar_parent_telemetry_keyed_scalars_exceed_limit,
    scalar_parent_update_binarytransparencyresult.key_value AS scalar_parent_update_binarytransparencyresult,
    scalar_parent_update_bitshresult.key_value AS scalar_parent_update_bitshresult,
    scalar_parent_widget_ime_name_on_linux.key_value AS scalar_parent_widget_ime_name_on_linux,
    scalar_parent_widget_ime_name_on_mac.key_value AS scalar_parent_widget_ime_name_on_mac,
    scalar_parent_widget_ime_name_on_windows.key_value AS scalar_parent_widget_ime_name_on_windows,
    ARRAY(SELECT * FROM UNNEST(search_counts.list)) AS search_counts,
    ssl_handshake_result.key_value AS ssl_handshake_result,
    string_addon_scalars.key_value AS string_addon_scalars,
    uint_addon_scalars.key_value AS uint_addon_scalars
  )
FROM
  `moz-fx-data-derived-datasets.telemetry_derived.main_summary_v4`
WHERE
  submission_date = @submission_date
  AND client_id NOT IN (
    SELECT DISTINCT
      client_id
    FROM
      `relud-17123.telemetry_stable.deletion_request_v4`
  )
