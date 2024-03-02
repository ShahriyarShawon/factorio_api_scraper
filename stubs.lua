---@meta


---@class MyClass
---@field prop1 number 
---@field prop2 number 
---@field prop3 number 
---@field prop4 number 
MyClass = {}
MyClass.__index = MyClass

function MyClass.new(o, prop1, prop2, prop3)
    o = o or {}
    setmetatable(o, MyClass)
    o.prop1 = prop1 or 0
    o.prop2 = prop2 or 0
    o.prop3 = prop3 or 0
    return o
end


---@class LuaAISettings
---@field allow_destroy_when_commands_fail 
---@field allow_try_return_to_spawner 
---@field do_separation 
---@field path_resolution_modifier 
---@field valid 
---@field object_name 
LuaAISettings = {}
LuaAISettings.__index = LuaAISettings

function LuaAISettings.help() end

---@class LuaAccumulatorControlBehavior
---@field output_signal 
---@field valid 
---@field object_name 
LuaAccumulatorControlBehavior = {}
LuaAccumulatorControlBehavior.__index = LuaAccumulatorControlBehavior

function LuaAccumulatorControlBehavior.help() end

---@class LuaAchievementPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field allowed_without_fight 
---@field hidden 
---@field valid 
---@field object_name 
LuaAchievementPrototype = {}
LuaAchievementPrototype.__index = LuaAchievementPrototype

function LuaAchievementPrototype.help() end

---@class LuaAmmoCategoryPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field bonus_gui_order 
---@field valid 
---@field object_name 
LuaAmmoCategoryPrototype = {}
LuaAmmoCategoryPrototype.__index = LuaAmmoCategoryPrototype

function LuaAmmoCategoryPrototype.help() end

---@class LuaArithmeticCombinatorControlBehavior
---@field parameters 
---@field valid 
---@field object_name 
LuaArithmeticCombinatorControlBehavior = {}
LuaArithmeticCombinatorControlBehavior.__index = LuaArithmeticCombinatorControlBehavior

function LuaArithmeticCombinatorControlBehavior.help() end

---@class LuaAutoplaceControlPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field richness 
---@field can_be_disabled 
---@field control_order 
---@field category 
---@field valid 
---@field object_name 
LuaAutoplaceControlPrototype = {}
LuaAutoplaceControlPrototype.__index = LuaAutoplaceControlPrototype

function LuaAutoplaceControlPrototype.help() end

---@class LuaBootstrap
---@field mod_name 
---@field level 
---@field active_mods 
---@field object_name 
LuaBootstrap = {}
LuaBootstrap.__index = LuaBootstrap

function LuaBootstrap.on_init() end
function LuaBootstrap.on_load() end
function LuaBootstrap.on_configuration_changed() end
function LuaBootstrap.on_event() end
function LuaBootstrap.on_nth_tick() end
function LuaBootstrap.register_on_entity_destroyed() end
function LuaBootstrap.register_metatable() end
function LuaBootstrap.generate_event_name() end
function LuaBootstrap.get_event_handler() end
function LuaBootstrap.get_event_order() end
function LuaBootstrap.set_event_filter() end
function LuaBootstrap.get_event_filter() end
function LuaBootstrap.get_prototype_history() end
function LuaBootstrap.raise_event() end
function LuaBootstrap.raise_console_chat() end
function LuaBootstrap.raise_player_crafted_item() end
function LuaBootstrap.raise_player_fast_transferred() end
function LuaBootstrap.raise_biter_base_built() end
function LuaBootstrap.raise_market_item_purchased() end
function LuaBootstrap.raise_script_built() end
function LuaBootstrap.raise_script_destroy() end
function LuaBootstrap.raise_script_revive() end
function LuaBootstrap.raise_script_teleported() end
function LuaBootstrap.raise_script_set_tiles() end

---@class LuaBurner
---@field owner 
---@field inventory 
---@field burnt_result_inventory 
---@field heat 
---@field heat_capacity 
---@field remaining_burning_fuel 
---@field currently_burning 
---@field fuel_categories 
---@field valid 
---@field object_name 
LuaBurner = {}
LuaBurner.__index = LuaBurner

function LuaBurner.help() end

---@class LuaBurnerPrototype
---@field emissions 
---@field render_no_network_icon 
---@field render_no_power_icon 
---@field effectivity 
---@field fuel_inventory_size 
---@field burnt_inventory_size 
---@field smoke 
---@field light_flicker 
---@field fuel_categories 
---@field valid 
---@field object_name 
LuaBurnerPrototype = {}
LuaBurnerPrototype.__index = LuaBurnerPrototype

function LuaBurnerPrototype.help() end

---@class LuaChunkIterator
---@field valid 
---@field object_name 
LuaChunkIterator = {}
LuaChunkIterator.__index = LuaChunkIterator

function LuaChunkIterator.help() end

---@class LuaCircuitNetwork
---@field entity 
---@field wire_type 
---@field circuit_connector_id 
---@field signals 
---@field network_id 
---@field connected_circuit_count 
---@field valid 
---@field object_name 
LuaCircuitNetwork = {}
LuaCircuitNetwork.__index = LuaCircuitNetwork

function LuaCircuitNetwork.get_signal() end
function LuaCircuitNetwork.help() end

---@class LuaCombinatorControlBehavior
---@field signals_last_tick 
LuaCombinatorControlBehavior = {}
LuaCombinatorControlBehavior.__index = LuaCombinatorControlBehavior

function LuaCombinatorControlBehavior.get_signal_last_tick() end

---@class LuaCommandProcessor
---@field commands 
---@field game_commands 
---@field object_name 
LuaCommandProcessor = {}
LuaCommandProcessor.__index = LuaCommandProcessor

function LuaCommandProcessor.add_command() end
function LuaCommandProcessor.remove_command() end

---@class LuaConstantCombinatorControlBehavior
---@field parameters 
---@field enabled 
---@field signals_count 
---@field valid 
---@field object_name 
LuaConstantCombinatorControlBehavior = {}
LuaConstantCombinatorControlBehavior.__index = LuaConstantCombinatorControlBehavior

function LuaConstantCombinatorControlBehavior.set_signal() end
function LuaConstantCombinatorControlBehavior.get_signal() end
function LuaConstantCombinatorControlBehavior.help() end

---@class LuaContainerControlBehavior
---@field valid 
---@field object_name 
LuaContainerControlBehavior = {}
LuaContainerControlBehavior.__index = LuaContainerControlBehavior

function LuaContainerControlBehavior.help() end

---@class LuaControl
---@field surface 
---@field surface_index 
---@field position 
---@field vehicle 
---@field force 
---@field force_index 
---@field selected 
---@field opened 
---@field crafting_queue_size 
---@field crafting_queue_progress 
---@field walking_state 
---@field riding_state 
---@field mining_state 
---@field shooting_state 
---@field picking_state 
---@field repair_state 
---@field cursor_stack 
---@field cursor_ghost 
---@field driving 
---@field crafting_queue 
---@field following_robots 
---@field cheat_mode 
---@field character_crafting_speed_modifier 
---@field character_mining_speed_modifier 
---@field character_additional_mining_categories 
---@field character_running_speed_modifier 
---@field character_build_distance_bonus 
---@field character_item_drop_distance_bonus 
---@field character_reach_distance_bonus 
---@field character_resource_reach_distance_bonus 
---@field character_item_pickup_distance_bonus 
---@field character_loot_pickup_distance_bonus 
---@field character_inventory_slots_bonus 
---@field character_trash_slot_count_bonus 
---@field character_maximum_following_robot_count_bonus 
---@field character_health_bonus 
---@field character_personal_logistic_requests_enabled 
---@field vehicle_logistic_requests_enabled 
---@field opened_gui_type 
---@field build_distance 
---@field drop_item_distance 
---@field reach_distance 
---@field item_pickup_distance 
---@field loot_pickup_distance 
---@field resource_reach_distance 
---@field in_combat 
---@field character_running_speed 
---@field character_mining_progress 
LuaControl = {}
LuaControl.__index = LuaControl

function LuaControl.get_inventory() end
function LuaControl.get_max_inventory_index() end
function LuaControl.get_main_inventory() end
function LuaControl.can_insert() end
function LuaControl.insert() end
function LuaControl.set_gui_arrow() end
function LuaControl.clear_gui_arrow() end
function LuaControl.get_item_count() end
function LuaControl.has_items_inside() end
function LuaControl.can_reach_entity() end
function LuaControl.clear_items_inside() end
function LuaControl.remove_item() end
function LuaControl.teleport() end
function LuaControl.update_selected_entity() end
function LuaControl.clear_selected_entity() end
function LuaControl.disable_flashlight() end
function LuaControl.enable_flashlight() end
function LuaControl.is_flashlight_enabled() end
function LuaControl.get_craftable_count() end
function LuaControl.begin_crafting() end
function LuaControl.cancel_crafting() end
function LuaControl.mine_entity() end
function LuaControl.mine_tile() end
function LuaControl.is_player() end
function LuaControl.open_technology_gui() end
function LuaControl.set_personal_logistic_slot() end
function LuaControl.set_vehicle_logistic_slot() end
function LuaControl.get_personal_logistic_slot() end
function LuaControl.get_vehicle_logistic_slot() end
function LuaControl.clear_personal_logistic_slot() end
function LuaControl.clear_vehicle_logistic_slot() end
function LuaControl.is_cursor_blueprint() end
function LuaControl.get_blueprint_entities() end
function LuaControl.is_cursor_empty() end

---@class LuaControlBehavior
---@field type 
---@field entity 
LuaControlBehavior = {}
LuaControlBehavior.__index = LuaControlBehavior

function LuaControlBehavior.get_circuit_network() end

---@class LuaCustomChartTag
---@field icon 
---@field last_user 
---@field position 
---@field text 
---@field tag_number 
---@field force 
---@field surface 
---@field valid 
---@field object_name 
LuaCustomChartTag = {}
LuaCustomChartTag.__index = LuaCustomChartTag

function LuaCustomChartTag.destroy() end
function LuaCustomChartTag.help() end

---@class LuaCustomInputPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field key_sequence 
---@field alternative_key_sequence 
---@field controller_key_sequence 
---@field controller_alternative_key_sequence 
---@field linked_game_control 
---@field consuming 
---@field action 
---@field enabled 
---@field enabled_while_spectating 
---@field enabled_while_in_cutscene 
---@field include_selected_prototype 
---@field item_to_spawn 
---@field valid 
---@field object_name 
LuaCustomInputPrototype = {}
LuaCustomInputPrototype.__index = LuaCustomInputPrototype

function LuaCustomInputPrototype.help() end

---@class LuaCustomTable
---@field valid 
---@field object_name 
LuaCustomTable = {}
LuaCustomTable.__index = LuaCustomTable

function LuaCustomTable.help() end

---@class LuaDamagePrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field hidden 
---@field valid 
---@field object_name 
LuaDamagePrototype = {}
LuaDamagePrototype.__index = LuaDamagePrototype

function LuaDamagePrototype.help() end

---@class LuaDeciderCombinatorControlBehavior
---@field parameters 
---@field valid 
---@field object_name 
LuaDeciderCombinatorControlBehavior = {}
LuaDeciderCombinatorControlBehavior.__index = LuaDeciderCombinatorControlBehavior

function LuaDeciderCombinatorControlBehavior.help() end

---@class LuaDecorativePrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field collision_box 
---@field collision_mask 
---@field collision_mask_with_flags 
---@field autoplace_specification 
---@field valid 
---@field object_name 
LuaDecorativePrototype = {}
LuaDecorativePrototype.__index = LuaDecorativePrototype

function LuaDecorativePrototype.help() end

---@class LuaElectricEnergySourcePrototype
---@field buffer_capacity 
---@field usage_priority 
---@field input_flow_limit 
---@field output_flow_limit 
---@field drain 
---@field emissions 
---@field render_no_network_icon 
---@field render_no_power_icon 
---@field valid 
---@field object_name 
LuaElectricEnergySourcePrototype = {}
LuaElectricEnergySourcePrototype.__index = LuaElectricEnergySourcePrototype

function LuaElectricEnergySourcePrototype.help() end

---@class LuaEntity
---@field name 
---@field ghost_name 
---@field localised_name 
---@field localised_description 
---@field ghost_localised_name 
---@field ghost_localised_description 
---@field type 
---@field ghost_type 
---@field active 
---@field destructible 
---@field minable 
---@field rotatable 
---@field operable 
---@field health 
---@field direction 
---@field supports_direction 
---@field orientation 
---@field cliff_orientation 
---@field relative_turret_orientation 
---@field torso_orientation 
---@field amount 
---@field initial_amount 
---@field effectivity_modifier 
---@field consumption_modifier 
---@field friction_modifier 
---@field driver_is_gunner 
---@field vehicle_automatic_targeting_parameters 
---@field speed 
---@field effective_speed 
---@field stack 
---@field prototype 
---@field ghost_prototype 
---@field drop_position 
---@field pickup_position 
---@field drop_target 
---@field pickup_target 
---@field selected_gun_index 
---@field energy 
---@field temperature 
---@field previous_recipe 
---@field held_stack 
---@field held_stack_position 
---@field train 
---@field neighbours 
---@field belt_neighbours 
---@field fluidbox 
---@field backer_name 
---@field entity_label 
---@field time_to_live 
---@field color 
---@field text 
---@field signal_state 
---@field chain_signal_state 
---@field to_be_looted 
---@field crafting_speed 
---@field crafting_progress 
---@field bonus_progress 
---@field productivity_bonus 
---@field pollution_bonus 
---@field speed_bonus 
---@field consumption_bonus 
---@field belt_to_ground_type 
---@field loader_type 
---@field rocket_parts 
---@field logistic_network 
---@field logistic_cell 
---@field item_requests 
---@field player 
---@field unit_group 
---@field damage_dealt 
---@field kills 
---@field last_user 
---@field electric_buffer_size 
---@field electric_input_flow_limit 
---@field electric_output_flow_limit 
---@field electric_drain 
---@field electric_emissions 
---@field unit_number 
---@field ghost_unit_number 
---@field mining_progress 
---@field bonus_mining_progress 
---@field power_production 
---@field power_usage 
---@field bounding_box 
---@field secondary_bounding_box 
---@field selection_box 
---@field secondary_selection_box 
---@field mining_target 
---@field circuit_connected_entities 
---@field circuit_connection_definitions 
---@field copper_connection_definitions 
---@field request_slot_count 
---@field filter_slot_count 
---@field loader_container 
---@field grid 
---@field graphics_variation 
---@field tree_color_index 
---@field tree_color_index_max 
---@field tree_stage_index 
---@field tree_stage_index_max 
---@field tree_gray_stage_index 
---@field tree_gray_stage_index_max 
---@field burner 
---@field shooting_target 
---@field proxy_target 
---@field stickers 
---@field sticked_to 
---@field sticker_vehicle_modifiers 
---@field parameters 
---@field alert_parameters 
---@field electric_network_statistics 
---@field inserter_target_pickup_count 
---@field inserter_stack_size_override 
---@field products_finished 
---@field spawner 
---@field spawning_cooldown 
---@field absorbed_pollution 
---@field spawn_shift 
---@field units 
---@field power_switch_state 
---@field effects 
---@field beacons_count 
---@field infinity_container_filters 
---@field remove_unfiltered_items 
---@field character_corpse_player_index 
---@field character_corpse_tick_of_death 
---@field character_corpse_death_cause 
---@field associated_player 
---@field tick_of_last_attack 
---@field tick_of_last_damage 
---@field splitter_filter 
---@field inserter_filter_mode 
---@field splitter_input_priority 
---@field splitter_output_priority 
---@field armed 
---@field recipe_locked 
---@field connected_rail 
---@field connected_rail_direction 
---@field trains_in_block 
---@field timeout 
---@field neighbour_bonus 
---@field ai_settings 
---@field highlight_box_type 
---@field highlight_box_blink_interval 
---@field status 
---@field enable_logistics_while_moving 
---@field render_player 
---@field render_to_forces 
---@field pump_rail_target 
---@field moving 
---@field electric_network_id 
---@field allow_dispatching_robots 
---@field auto_launch 
---@field energy_generated_last_tick 
---@field storage_filter 
---@field request_from_buffers 
---@field corpse_expires 
---@field corpse_immune_to_entity_placement 
---@field tags 
---@field command 
---@field distraction_command 
---@field time_to_next_effect 
---@field autopilot_destination 
---@field autopilot_destinations 
---@field trains_count 
---@field trains_limit 
---@field is_entity_with_force 
---@field is_military_target 
---@field is_entity_with_owner 
---@field is_entity_with_health 
---@field combat_robot_owner 
---@field link_id 
---@field follow_target 
---@field follow_offset 
---@field linked_belt_type 
---@field linked_belt_neighbour 
---@field radar_scan_progress 
---@field rocket_silo_status 
---@field tile_width 
---@field tile_height 
---@field is_headed_to_trains_front 
---@field draw_data 
---@field belt_shape 
---@field gps_tag 
---@field valid 
---@field object_name 
LuaEntity = {}
LuaEntity.__index = LuaEntity

function LuaEntity.get_output_inventory() end
function LuaEntity.get_module_inventory() end
function LuaEntity.get_fuel_inventory() end
function LuaEntity.get_burnt_result_inventory() end
function LuaEntity.damage() end
function LuaEntity.can_be_destroyed() end
function LuaEntity.destroy() end
function LuaEntity.set_command() end
function LuaEntity.set_distraction_command() end
function LuaEntity.has_command() end
function LuaEntity.die() end
function LuaEntity.has_flag() end
function LuaEntity.ghost_has_flag() end
function LuaEntity.add_market_item() end
function LuaEntity.remove_market_item() end
function LuaEntity.get_market_items() end
function LuaEntity.clear_market_items() end
function LuaEntity.connect_neighbour() end
function LuaEntity.disconnect_neighbour() end
function LuaEntity.order_deconstruction() end
function LuaEntity.cancel_deconstruction() end
function LuaEntity.to_be_deconstructed() end
function LuaEntity.order_upgrade() end
function LuaEntity.cancel_upgrade() end
function LuaEntity.to_be_upgraded() end
function LuaEntity.get_request_slot() end
function LuaEntity.set_request_slot() end
function LuaEntity.clear_request_slot() end
function LuaEntity.is_crafting() end
function LuaEntity.is_opened() end
function LuaEntity.is_opening() end
function LuaEntity.is_closed() end
function LuaEntity.is_closing() end
function LuaEntity.request_to_open() end
function LuaEntity.request_to_close() end
function LuaEntity.get_transport_line() end
function LuaEntity.get_max_transport_line_index() end
function LuaEntity.launch_rocket() end
function LuaEntity.revive() end
function LuaEntity.silent_revive() end
function LuaEntity.get_connected_rail() end
function LuaEntity.get_connected_rails() end
function LuaEntity.get_rail_segment_entity() end
function LuaEntity.get_rail_segment_end() end
function LuaEntity.get_rail_segment_rails() end
function LuaEntity.get_rail_segment_length() end
function LuaEntity.get_rail_segment_overlaps() end
function LuaEntity.is_rail_in_same_rail_segment_as() end
function LuaEntity.is_rail_in_same_rail_block_as() end
function LuaEntity.get_parent_signals() end
function LuaEntity.get_child_signals() end
function LuaEntity.get_inbound_signals() end
function LuaEntity.get_outbound_signals() end
function LuaEntity.get_filter() end
function LuaEntity.set_filter() end
function LuaEntity.get_infinity_container_filter() end
function LuaEntity.set_infinity_container_filter() end
function LuaEntity.get_infinity_pipe_filter() end
function LuaEntity.set_infinity_pipe_filter() end
function LuaEntity.get_heat_setting() end
function LuaEntity.set_heat_setting() end
function LuaEntity.get_control_behavior() end
function LuaEntity.get_or_create_control_behavior() end
function LuaEntity.get_circuit_network() end
function LuaEntity.get_merged_signal() end
function LuaEntity.get_merged_signals() end
function LuaEntity.supports_backer_name() end
function LuaEntity.copy_settings() end
function LuaEntity.get_logistic_point() end
function LuaEntity.play_note() end
function LuaEntity.connect_rolling_stock() end
function LuaEntity.disconnect_rolling_stock() end
function LuaEntity.update_connections() end
function LuaEntity.get_recipe() end
function LuaEntity.set_recipe() end
function LuaEntity.rotate() end
function LuaEntity.get_driver() end
function LuaEntity.set_driver() end
function LuaEntity.get_passenger() end
function LuaEntity.set_passenger() end
function LuaEntity.is_connected_to_electric_network() end
function LuaEntity.get_train_stop_trains() end
function LuaEntity.get_stopped_train() end
function LuaEntity.clone() end
function LuaEntity.get_fluid_count() end
function LuaEntity.get_fluid_contents() end
function LuaEntity.remove_fluid() end
function LuaEntity.insert_fluid() end
function LuaEntity.clear_fluid_inside() end
function LuaEntity.get_beam_source() end
function LuaEntity.set_beam_source() end
function LuaEntity.get_beam_target() end
function LuaEntity.set_beam_target() end
function LuaEntity.get_radius() end
function LuaEntity.get_health_ratio() end
function LuaEntity.create_build_effect_smoke() end
function LuaEntity.release_from_spawner() end
function LuaEntity.toggle_equipment_movement_bonus() end
function LuaEntity.can_shoot() end
function LuaEntity.start_fading_out() end
function LuaEntity.get_upgrade_target() end
function LuaEntity.get_upgrade_direction() end
function LuaEntity.get_damage_to_be_taken() end
function LuaEntity.deplete() end
function LuaEntity.mine() end
function LuaEntity.spawn_decorations() end
function LuaEntity.can_wires_reach() end
function LuaEntity.get_connected_rolling_stock() end
function LuaEntity.is_registered_for_construction() end
function LuaEntity.is_registered_for_deconstruction() end
function LuaEntity.is_registered_for_upgrade() end
function LuaEntity.is_registered_for_repair() end
function LuaEntity.add_autopilot_destination() end
function LuaEntity.connect_linked_belts() end
function LuaEntity.disconnect_linked_belts() end
function LuaEntity.get_spider_legs() end
function LuaEntity.stop_spider() end
function LuaEntity.get_beacons() end
function LuaEntity.get_beacon_effect_receivers() end
function LuaEntity.help() end

---@class LuaEntityPrototype
---@field type 
---@field name 
---@field localised_name 
---@field localised_description 
---@field max_health 
---@field infinite_resource 
---@field minimum_resource_amount 
---@field normal_resource_amount 
---@field infinite_depletion_resource_amount 
---@field resource_category 
---@field mineable_properties 
---@field items_to_place_this 
---@field collision_box 
---@field secondary_collision_box 
---@field map_generator_bounding_box 
---@field selection_box 
---@field drawing_box 
---@field sticker_box 
---@field collision_mask 
---@field collision_mask_with_flags 
---@field default_collision_mask_with_flags 
---@field order 
---@field group 
---@field subgroup 
---@field healing_per_tick 
---@field emissions_per_second 
---@field corpses 
---@field selectable_in_game 
---@field selection_priority 
---@field weight 
---@field resistances 
---@field fast_replaceable_group 
---@field next_upgrade 
---@field loot 
---@field repair_speed_modifier 
---@field turret_range 
---@field autoplace_specification 
---@field belt_speed 
---@field result_units 
---@field attack_result 
---@field final_attack_result 
---@field attack_parameters 
---@field spawn_cooldown 
---@field mining_drill_radius 
---@field mining_speed 
---@field logistic_mode 
---@field max_underground_distance 
---@field flags 
---@field remains_when_mined 
---@field additional_pastable_entities 
---@field allow_copy_paste 
---@field shooting_cursor_size 
---@field created_smoke 
---@field created_effect 
---@field map_color 
---@field friendly_map_color 
---@field enemy_map_color 
---@field build_base_evolution_requirement 
---@field instruments 
---@field max_polyphony 
---@field module_inventory_size 
---@field ingredient_count 
---@field crafting_speed 
---@field crafting_categories 
---@field resource_categories 
---@field supply_area_distance 
---@field max_wire_distance 
---@field max_circuit_wire_distance 
---@field energy_usage 
---@field max_energy_usage 
---@field max_energy_production 
---@field effectivity 
---@field consumption 
---@field friction_force 
---@field braking_force 
---@field air_resistance 
---@field tank_driving 
---@field rotation_speed 
---@field turret_rotation_speed 
---@field guns 
---@field indexed_guns 
---@field speed 
---@field speed_multiplier_when_out_of_energy 
---@field max_payload_size 
---@field draw_cargo 
---@field energy_per_move 
---@field energy_per_tick 
---@field max_energy 
---@field min_to_charge 
---@field max_to_charge 
---@field burner_prototype 
---@field electric_energy_source_prototype 
---@field heat_energy_source_prototype 
---@field fluid_energy_source_prototype 
---@field void_energy_source_prototype 
---@field heat_buffer_prototype 
---@field building_grid_bit_shift 
---@field fluid_usage_per_tick 
---@field maximum_temperature 
---@field burns_fluid 
---@field scale_fluid_usage 
---@field destroy_non_fuel_fluid 
---@field max_power_output 
---@field target_temperature 
---@field boiler_mode 
---@field fluid 
---@field fluid_capacity 
---@field pumping_speed 
---@field stack 
---@field allow_custom_vectors 
---@field allow_burner_leech 
---@field inserter_extension_speed 
---@field inserter_rotation_speed 
---@field inserter_pickup_position 
---@field inserter_drop_position 
---@field inserter_chases_belt_items 
---@field count_as_rock_for_filtered_deconstruction 
---@field filter_count 
---@field time_to_live 
---@field distribution_effectivity 
---@field explosion_beam 
---@field explosion_rotate 
---@field tree_color_count 
---@field alert_when_damaged 
---@field alert_when_attacking 
---@field color 
---@field collision_mask_collides_with_self 
---@field collision_mask_collides_with_tiles_only 
---@field collision_mask_considers_tile_transitions 
---@field allowed_effects 
---@field rocket_parts_required 
---@field rocket_rising_delay 
---@field launch_wait_time 
---@field light_blinking_speed 
---@field door_opening_speed 
---@field rising_speed 
---@field engine_starting_speed 
---@field flying_speed 
---@field flying_acceleration 
---@field fixed_recipe 
---@field construction_radius 
---@field logistic_radius 
---@field energy_per_hit_point 
---@field create_ghost_on_death 
---@field ammo_category 
---@field timeout 
---@field trigger_collision_mask 
---@field fluidbox_prototypes 
---@field neighbour_bonus 
---@field container_distance 
---@field belt_distance 
---@field belt_length 
---@field is_building 
---@field automated_ammo_count 
---@field max_speed 
---@field darkness_for_all_lamps_on 
---@field darkness_for_all_lamps_off 
---@field always_on 
---@field min_darkness_to_spawn 
---@field max_darkness_to_spawn 
---@field call_for_help_radius 
---@field max_count_of_owned_units 
---@field max_friends_around_to_spawn 
---@field spawning_radius 
---@field spawning_spacing 
---@field radius 
---@field cliff_explosive_prototype 
---@field rocket_entity_prototype 
---@field has_belt_immunity 
---@field vision_distance 
---@field pollution_to_join_attack 
---@field min_pursue_time 
---@field max_pursue_distance 
---@field radar_range 
---@field move_while_shooting 
---@field can_open_gates 
---@field affected_by_tiles 
---@field distraction_cooldown 
---@field spawning_time_modifier 
---@field alert_icon_shift 
---@field alert_icon_scale 
---@field lab_inputs 
---@field researching_speed 
---@field item_slot_count 
---@field base_productivity 
---@field allow_access_to_all_forces 
---@field supports_direction 
---@field terrain_friction_modifier 
---@field allow_passengers 
---@field max_distance_of_sector_revealed 
---@field max_distance_of_nearby_sector_revealed 
---@field adjacent_tile_collision_box 
---@field adjacent_tile_collision_mask 
---@field adjacent_tile_collision_test 
---@field center_collision_mask 
---@field grid_prototype 
---@field remove_decoratives 
---@field related_underground_belt 
---@field inserter_stack_size_bonus 
---@field protected_from_tile_building 
---@field is_entity_with_owner 
---@field is_military_target 
---@field allow_run_time_change_of_is_military_target 
---@field logistic_parameters 
---@field height 
---@field torso_rotation_speed 
---@field torso_bob_speed 
---@field automatic_weapon_cycling 
---@field chain_shooting_cooldown_modifier 
---@field chunk_exploration_radius 
---@field animation_speed_coefficient 
---@field manual_range_modifier 
---@field dying_speed 
---@field active_energy_usage 
---@field lamp_energy_usage 
---@field use_exact_mode 
---@field tile_width 
---@field tile_height 
---@field vertical_selection_shift 
---@field spawn_decoration 
---@field spawn_decorations_on_expansion 
---@field connection_distance 
---@field joint_distance 
---@field radius_visualisation_specification 
---@field running_speed 
---@field maximum_corner_sliding_distance 
---@field build_distance 
---@field drop_item_distance 
---@field reach_distance 
---@field reach_resource_distance 
---@field item_pickup_distance 
---@field loot_pickup_distance 
---@field enter_vehicle_distance 
---@field ticks_to_keep_gun 
---@field ticks_to_keep_aiming_direction 
---@field ticks_to_stay_in_combat 
---@field respawn_time 
---@field damage_hit_tint 
---@field character_corpse 
---@field valid 
---@field object_name 
LuaEntityPrototype = {}
LuaEntityPrototype.__index = LuaEntityPrototype

function LuaEntityPrototype.has_flag() end
function LuaEntityPrototype.get_inventory_size() end
function LuaEntityPrototype.help() end

---@class LuaEquipment
---@field name 
---@field type 
---@field position 
---@field shape 
---@field shield 
---@field max_shield 
---@field max_solar_power 
---@field movement_bonus 
---@field generator_power 
---@field energy 
---@field max_energy 
---@field prototype 
---@field burner 
---@field valid 
---@field object_name 
LuaEquipment = {}
LuaEquipment.__index = LuaEquipment

function LuaEquipment.help() end

---@class LuaEquipmentCategoryPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field valid 
---@field object_name 
LuaEquipmentCategoryPrototype = {}
LuaEquipmentCategoryPrototype.__index = LuaEquipmentCategoryPrototype

function LuaEquipmentCategoryPrototype.help() end

---@class LuaEquipmentGrid
---@field prototype 
---@field width 
---@field height 
---@field equipment 
---@field generator_energy 
---@field max_solar_energy 
---@field available_in_batteries 
---@field battery_capacity 
---@field shield 
---@field max_shield 
---@field inhibit_movement_bonus 
---@field unique_id 
---@field valid 
---@field object_name 
LuaEquipmentGrid = {}
LuaEquipmentGrid.__index = LuaEquipmentGrid

function LuaEquipmentGrid.take() end
function LuaEquipmentGrid.take_all() end
function LuaEquipmentGrid.clear() end
function LuaEquipmentGrid.put() end
function LuaEquipmentGrid.can_move() end
function LuaEquipmentGrid.move() end
function LuaEquipmentGrid.get() end
function LuaEquipmentGrid.get_contents() end
function LuaEquipmentGrid.find() end
function LuaEquipmentGrid.count() end
function LuaEquipmentGrid.help() end

---@class LuaEquipmentGridPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field equipment_categories 
---@field width 
---@field height 
---@field locked 
---@field valid 
---@field object_name 
LuaEquipmentGridPrototype = {}
LuaEquipmentGridPrototype.__index = LuaEquipmentGridPrototype

function LuaEquipmentGridPrototype.help() end

---@class LuaEquipmentPrototype
---@field name 
---@field type 
---@field order 
---@field localised_name 
---@field localised_description 
---@field shape 
---@field take_result 
---@field energy_production 
---@field shield 
---@field energy_per_shield 
---@field logistic_parameters 
---@field energy_consumption 
---@field movement_bonus 
---@field energy_source 
---@field equipment_categories 
---@field burner_prototype 
---@field electric_energy_source_prototype 
---@field background_color 
---@field attack_parameters 
---@field automatic 
---@field valid 
---@field object_name 
LuaEquipmentPrototype = {}
LuaEquipmentPrototype.__index = LuaEquipmentPrototype

function LuaEquipmentPrototype.help() end

---@class LuaFlowStatistics
---@field input_counts 
---@field output_counts 
---@field force 
---@field valid 
---@field object_name 
LuaFlowStatistics = {}
LuaFlowStatistics.__index = LuaFlowStatistics

function LuaFlowStatistics.get_input_count() end
function LuaFlowStatistics.set_input_count() end
function LuaFlowStatistics.get_output_count() end
function LuaFlowStatistics.set_output_count() end
function LuaFlowStatistics.get_flow_count() end
function LuaFlowStatistics.on_flow() end
function LuaFlowStatistics.clear() end
function LuaFlowStatistics.help() end

---@class LuaFluidBox
---@field owner 
---@field valid 
---@field object_name 
LuaFluidBox = {}
LuaFluidBox.__index = LuaFluidBox

function LuaFluidBox.get_prototype() end
function LuaFluidBox.get_capacity() end
function LuaFluidBox.get_connections() end
function LuaFluidBox.get_pipe_connections() end
function LuaFluidBox.get_filter() end
function LuaFluidBox.set_filter() end
function LuaFluidBox.get_flow() end
function LuaFluidBox.get_locked_fluid() end
function LuaFluidBox.get_fluid_system_id() end
function LuaFluidBox.get_fluid_system_contents() end
function LuaFluidBox.flush() end
function LuaFluidBox.help() end

---@class LuaFluidBoxPrototype
---@field entity 
---@field index 
---@field pipe_connections 
---@field production_type 
---@field base_area 
---@field base_level 
---@field height 
---@field volume 
---@field filter 
---@field minimum_temperature 
---@field maximum_temperature 
---@field secondary_draw_orders 
---@field render_layer 
---@field valid 
---@field object_name 
LuaFluidBoxPrototype = {}
LuaFluidBoxPrototype.__index = LuaFluidBoxPrototype

function LuaFluidBoxPrototype.help() end

---@class LuaFluidEnergySourcePrototype
---@field emissions 
---@field render_no_network_icon 
---@field render_no_power_icon 
---@field effectivity 
---@field burns_fluid 
---@field scale_fluid_usage 
---@field destroy_non_fuel_fluid 
---@field fluid_usage_per_tick 
---@field smoke 
---@field maximum_temperature 
---@field fluid_box 
---@field valid 
---@field object_name 
LuaFluidEnergySourcePrototype = {}
LuaFluidEnergySourcePrototype.__index = LuaFluidEnergySourcePrototype

function LuaFluidEnergySourcePrototype.help() end

---@class LuaFluidPrototype
---@field name 
---@field localised_name 
---@field localised_description 
---@field default_temperature 
---@field max_temperature 
---@field heat_capacity 
---@field order 
---@field group 
---@field subgroup 
---@field base_color 
---@field flow_color 
---@field gas_temperature 
---@field emissions_multiplier 
---@field fuel_value 
---@field hidden 
---@field valid 
---@field object_name 
LuaFluidPrototype = {}
LuaFluidPrototype.__index = LuaFluidPrototype

function LuaFluidPrototype.help() end

---@class LuaFontPrototype
---@field name 
---@field from 
---@field size 
---@field spacing 
---@field border 
---@field filtered 
---@field border_color 
---@field valid 
---@field object_name 
LuaFontPrototype = {}
LuaFontPrototype.__index = LuaFontPrototype

function LuaFontPrototype.help() end

---@class LuaForce
---@field name 
---@field technologies 
---@field recipes 
---@field manual_mining_speed_modifier 
---@field manual_crafting_speed_modifier 
---@field laboratory_speed_modifier 
---@field laboratory_productivity_bonus 
---@field worker_robots_speed_modifier 
---@field worker_robots_battery_modifier 
---@field worker_robots_storage_bonus 
---@field current_research 
---@field research_progress 
---@field previous_research 
---@field inserter_stack_size_bonus 
---@field stack_inserter_capacity_bonus 
---@field character_trash_slot_count 
---@field maximum_following_robot_count 
---@field following_robots_lifetime_modifier 
---@field ghost_time_to_live 
---@field players 
---@field ai_controllable 
---@field logistic_networks 
---@field item_production_statistics 
---@field fluid_production_statistics 
---@field kill_count_statistics 
---@field entity_build_count_statistics 
---@field character_running_speed_modifier 
---@field artillery_range_modifier 
---@field character_build_distance_bonus 
---@field character_item_drop_distance_bonus 
---@field character_reach_distance_bonus 
---@field character_resource_reach_distance_bonus 
---@field character_item_pickup_distance_bonus 
---@field character_loot_pickup_distance_bonus 
---@field character_inventory_slots_bonus 
---@field deconstruction_time_to_live 
---@field character_health_bonus 
---@field max_successful_attempts_per_tick_per_construction_queue 
---@field max_failed_attempts_per_tick_per_construction_queue 
---@field zoom_to_world_enabled 
---@field zoom_to_world_ghost_building_enabled 
---@field zoom_to_world_blueprint_enabled 
---@field zoom_to_world_deconstruction_planner_enabled 
---@field zoom_to_world_selection_tool_enabled 
---@field character_logistic_requests 
---@field rockets_launched 
---@field items_launched 
---@field connected_players 
---@field mining_drill_productivity_bonus 
---@field train_braking_force_bonus 
---@field evolution_factor 
---@field evolution_factor_by_pollution 
---@field evolution_factor_by_time 
---@field evolution_factor_by_killing_spawners 
---@field friendly_fire 
---@field share_chart 
---@field research_queue_enabled 
---@field index 
---@field research_queue 
---@field research_enabled 
---@field custom_color 
---@field color 
---@field valid 
---@field object_name 
LuaForce = {}
LuaForce.__index = LuaForce

function LuaForce.get_entity_count() end
function LuaForce.disable_research() end
function LuaForce.enable_research() end
function LuaForce.disable_all_prototypes() end
function LuaForce.enable_all_prototypes() end
function LuaForce.reset_recipes() end
function LuaForce.enable_all_recipes() end
function LuaForce.enable_all_technologies() end
function LuaForce.research_all_technologies() end
function LuaForce.reset_technologies() end
function LuaForce.reset() end
function LuaForce.reset_technology_effects() end
function LuaForce.chart() end
function LuaForce.clear_chart() end
function LuaForce.rechart() end
function LuaForce.chart_all() end
function LuaForce.is_chunk_charted() end
function LuaForce.is_chunk_visible() end
function LuaForce.is_chunk_requested_for_charting() end
function LuaForce.cancel_charting() end
function LuaForce.get_ammo_damage_modifier() end
function LuaForce.set_ammo_damage_modifier() end
function LuaForce.get_gun_speed_modifier() end
function LuaForce.set_gun_speed_modifier() end
function LuaForce.get_turret_attack_modifier() end
function LuaForce.set_turret_attack_modifier() end
function LuaForce.set_cease_fire() end
function LuaForce.get_cease_fire() end
function LuaForce.set_friend() end
function LuaForce.get_friend() end
function LuaForce.is_pathfinder_busy() end
function LuaForce.kill_all_units() end
function LuaForce.find_logistic_network_by_position() end
function LuaForce.set_spawn_position() end
function LuaForce.get_spawn_position() end
function LuaForce.unchart_chunk() end
function LuaForce.get_item_launched() end
function LuaForce.set_item_launched() end
function LuaForce.print() end
function LuaForce.get_trains() end
function LuaForce.add_chart_tag() end
function LuaForce.find_chart_tags() end
function LuaForce.get_saved_technology_progress() end
function LuaForce.set_saved_technology_progress() end
function LuaForce.reset_evolution() end
function LuaForce.play_sound() end
function LuaForce.get_train_stops() end
function LuaForce.get_hand_crafting_disabled_for_recipe() end
function LuaForce.set_hand_crafting_disabled_for_recipe() end
function LuaForce.add_research() end
function LuaForce.cancel_current_research() end
function LuaForce.get_linked_inventory() end
function LuaForce.is_friend() end
function LuaForce.is_enemy() end
function LuaForce.help() end

---@class LuaFuelCategoryPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field valid 
---@field object_name 
LuaFuelCategoryPrototype = {}
LuaFuelCategoryPrototype.__index = LuaFuelCategoryPrototype

function LuaFuelCategoryPrototype.help() end

---@class LuaGameScript
---@field object_name 
---@field player 
---@field players 
---@field map_settings 
---@field difficulty_settings 
---@field difficulty 
---@field forces 
---@field entity_prototypes 
---@field item_prototypes 
---@field fluid_prototypes 
---@field tile_prototypes 
---@field equipment_prototypes 
---@field damage_prototypes 
---@field virtual_signal_prototypes 
---@field equipment_grid_prototypes 
---@field recipe_prototypes 
---@field technology_prototypes 
---@field decorative_prototypes 
---@field particle_prototypes 
---@field autoplace_control_prototypes 
---@field noise_layer_prototypes 
---@field mod_setting_prototypes 
---@field custom_input_prototypes 
---@field ammo_category_prototypes 
---@field named_noise_expressions 
---@field item_subgroup_prototypes 
---@field item_group_prototypes 
---@field fuel_category_prototypes 
---@field resource_category_prototypes 
---@field achievement_prototypes 
---@field module_category_prototypes 
---@field equipment_category_prototypes 
---@field trivial_smoke_prototypes 
---@field shortcut_prototypes 
---@field recipe_category_prototypes 
---@field font_prototypes 
---@field map_gen_presets 
---@field console_command_used 
---@field styles 
---@field tick 
---@field ticks_played 
---@field tick_paused 
---@field ticks_to_run 
---@field finished 
---@field finished_but_continuing 
---@field speed 
---@field surfaces 
---@field active_mods 
---@field connected_players 
---@field permissions 
---@field backer_names 
---@field default_map_gen_settings 
---@field enemy_has_vision_on_land_mines 
---@field autosave_enabled 
---@field draw_resource_selection 
---@field pollution_statistics 
---@field max_force_distraction_distance 
---@field max_force_distraction_chunk_distance 
---@field max_electric_pole_supply_area_distance 
---@field max_electric_pole_connection_distance 
---@field max_beacon_supply_area_distance 
---@field max_gate_activation_distance 
---@field max_inserter_reach_distance 
---@field max_pipe_to_ground_distance 
---@field max_underground_belt_distance 
LuaGameScript = {}
LuaGameScript.__index = LuaGameScript

function LuaGameScript.set_game_state() end
function LuaGameScript.reset_game_state() end
function LuaGameScript.get_entity_by_tag() end
function LuaGameScript.show_message_dialog() end
function LuaGameScript.is_demo() end
function LuaGameScript.reload_script() end
function LuaGameScript.reload_mods() end
function LuaGameScript.save_atlas() end
function LuaGameScript.check_consistency() end
function LuaGameScript.regenerate_entity() end
function LuaGameScript.take_screenshot() end
function LuaGameScript.set_wait_for_screenshots_to_finish() end
function LuaGameScript.take_technology_screenshot() end
function LuaGameScript.table_to_json() end
function LuaGameScript.json_to_table() end
function LuaGameScript.write_file() end
function LuaGameScript.remove_path() end
function LuaGameScript.remove_offline_players() end
function LuaGameScript.force_crc() end
function LuaGameScript.create_force() end
function LuaGameScript.merge_forces() end
function LuaGameScript.create_surface() end
function LuaGameScript.server_save() end
function LuaGameScript.auto_save() end
function LuaGameScript.delete_surface() end
function LuaGameScript.disable_replay() end
function LuaGameScript.disable_tutorial_triggers() end
function LuaGameScript.direction_to_string() end
function LuaGameScript.print() end
function LuaGameScript.create_random_generator() end
function LuaGameScript.check_prototype_translations() end
function LuaGameScript.play_sound() end
function LuaGameScript.is_valid_sound_path() end
function LuaGameScript.is_valid_sprite_path() end
function LuaGameScript.kick_player() end
function LuaGameScript.ban_player() end
function LuaGameScript.unban_player() end
function LuaGameScript.purge_player() end
function LuaGameScript.mute_player() end
function LuaGameScript.unmute_player() end
function LuaGameScript.count_pipe_groups() end
function LuaGameScript.is_multiplayer() end
function LuaGameScript.get_active_entities_count() end
function LuaGameScript.get_map_exchange_string() end
function LuaGameScript.parse_map_exchange_string() end
function LuaGameScript.get_train_stops() end
function LuaGameScript.get_player() end
function LuaGameScript.get_surface() end
function LuaGameScript.create_profiler() end
function LuaGameScript.evaluate_expression() end
function LuaGameScript.get_filtered_entity_prototypes() end
function LuaGameScript.get_filtered_item_prototypes() end
function LuaGameScript.get_filtered_equipment_prototypes() end
function LuaGameScript.get_filtered_mod_setting_prototypes() end
function LuaGameScript.get_filtered_achievement_prototypes() end
function LuaGameScript.get_filtered_tile_prototypes() end
function LuaGameScript.get_filtered_decorative_prototypes() end
function LuaGameScript.get_filtered_fluid_prototypes() end
function LuaGameScript.get_filtered_recipe_prototypes() end
function LuaGameScript.get_filtered_technology_prototypes() end
function LuaGameScript.create_inventory() end
function LuaGameScript.get_script_inventories() end
function LuaGameScript.reset_time_played() end
function LuaGameScript.encode_string() end
function LuaGameScript.decode_string() end
function LuaGameScript.get_train_by_id() end
function LuaGameScript.request_train_path() end

---@class LuaGenericOnOffControlBehavior
---@field disabled 
---@field circuit_condition 
---@field logistic_condition 
---@field connect_to_logistic_network 
---@field valid 
---@field object_name 
LuaGenericOnOffControlBehavior = {}
LuaGenericOnOffControlBehavior.__index = LuaGenericOnOffControlBehavior

function LuaGenericOnOffControlBehavior.help() end

---@class LuaGroup
---@field name 
---@field localised_name 
---@field type 
---@field group 
---@field subgroups 
---@field order_in_recipe 
---@field order 
---@field valid 
---@field object_name 
LuaGroup = {}
LuaGroup.__index = LuaGroup

function LuaGroup.help() end

---@class LuaGui
---@field player 
---@field children 
---@field top 
---@field left 
---@field center 
---@field goal 
---@field screen 
---@field relative 
---@field valid 
---@field object_name 
LuaGui = {}
LuaGui.__index = LuaGui

function LuaGui.is_valid_sprite_path() end
function LuaGui.help() end

---@class LuaGuiElement
---@field index 
---@field gui 
---@field parent 
---@field name 
---@field caption 
---@field value 
---@field direction 
---@field style 
---@field visible 
---@field text 
---@field children_names 
---@field state 
---@field player_index 
---@field sprite 
---@field resize_to_sprite 
---@field hovered_sprite 
---@field clicked_sprite 
---@field tooltip 
---@field elem_tooltip 
---@field horizontal_scroll_policy 
---@field vertical_scroll_policy 
---@field type 
---@field children 
---@field items 
---@field selected_index 
---@field number 
---@field show_percent_for_small_numbers 
---@field location 
---@field auto_center 
---@field badge_text 
---@field auto_toggle 
---@field toggled 
---@field game_controller_interaction 
---@field position 
---@field surface_index 
---@field zoom 
---@field minimap_player_index 
---@field force 
---@field elem_type 
---@field elem_value 
---@field elem_filters 
---@field selectable 
---@field word_wrap 
---@field read_only 
---@field enabled 
---@field ignored_by_interaction 
---@field locked 
---@field draw_vertical_lines 
---@field draw_horizontal_lines 
---@field draw_horizontal_line_after_headers 
---@field column_count 
---@field vertical_centering 
---@field slider_value 
---@field mouse_button_filter 
---@field numeric 
---@field allow_decimal 
---@field allow_negative 
---@field is_password 
---@field lose_focus_on_confirm 
---@field clear_and_focus_on_right_click 
---@field drag_target 
---@field selected_tab_index 
---@field tabs 
---@field entity 
---@field anchor 
---@field tags 
---@field raise_hover_events 
---@field switch_state 
---@field allow_none_state 
---@field left_label_caption 
---@field left_label_tooltip 
---@field right_label_caption 
---@field right_label_tooltip 
---@field valid 
---@field object_name 
LuaGuiElement = {}
LuaGuiElement.__index = LuaGuiElement

function LuaGuiElement.add() end
function LuaGuiElement.clear() end
function LuaGuiElement.destroy() end
function LuaGuiElement.get_mod() end
function LuaGuiElement.get_index_in_parent() end
function LuaGuiElement.swap_children() end
function LuaGuiElement.clear_items() end
function LuaGuiElement.get_item() end
function LuaGuiElement.set_item() end
function LuaGuiElement.add_item() end
function LuaGuiElement.remove_item() end
function LuaGuiElement.get_slider_minimum() end
function LuaGuiElement.get_slider_maximum() end
function LuaGuiElement.set_slider_minimum_maximum() end
function LuaGuiElement.get_slider_value_step() end
function LuaGuiElement.get_slider_discrete_slider() end
function LuaGuiElement.get_slider_discrete_values() end
function LuaGuiElement.set_slider_value_step() end
function LuaGuiElement.set_slider_discrete_slider() end
function LuaGuiElement.set_slider_discrete_values() end
function LuaGuiElement.focus() end
function LuaGuiElement.scroll_to_top() end
function LuaGuiElement.scroll_to_bottom() end
function LuaGuiElement.scroll_to_left() end
function LuaGuiElement.scroll_to_right() end
function LuaGuiElement.scroll_to_element() end
function LuaGuiElement.select_all() end
function LuaGuiElement.select() end
function LuaGuiElement.add_tab() end
function LuaGuiElement.remove_tab() end
function LuaGuiElement.force_auto_center() end
function LuaGuiElement.scroll_to_item() end
function LuaGuiElement.bring_to_front() end
function LuaGuiElement.close_dropdown() end
function LuaGuiElement.help() end

---@class LuaHeatBufferPrototype
---@field max_temperature 
---@field default_temperature 
---@field specific_heat 
---@field max_transfer 
---@field min_temperature_gradient 
---@field min_working_temperature 
---@field minimum_glow_temperature 
---@field connections 
---@field valid 
---@field object_name 
LuaHeatBufferPrototype = {}
LuaHeatBufferPrototype.__index = LuaHeatBufferPrototype

function LuaHeatBufferPrototype.help() end

---@class LuaHeatEnergySourcePrototype
---@field emissions 
---@field render_no_network_icon 
---@field render_no_power_icon 
---@field max_temperature 
---@field default_temperature 
---@field specific_heat 
---@field max_transfer 
---@field min_temperature_gradient 
---@field min_working_temperature 
---@field minimum_glow_temperature 
---@field connections 
---@field heat_buffer_prototype 
---@field valid 
---@field object_name 
LuaHeatEnergySourcePrototype = {}
LuaHeatEnergySourcePrototype.__index = LuaHeatEnergySourcePrototype

function LuaHeatEnergySourcePrototype.help() end

---@class LuaInserterControlBehavior
---@field circuit_read_hand_contents 
---@field circuit_mode_of_operation 
---@field circuit_hand_read_mode 
---@field circuit_set_stack_size 
---@field circuit_stack_control_signal 
---@field valid 
---@field object_name 
LuaInserterControlBehavior = {}
LuaInserterControlBehavior.__index = LuaInserterControlBehavior

function LuaInserterControlBehavior.help() end

---@class LuaInventory
---@field index 
---@field entity_owner 
---@field player_owner 
---@field equipment_owner 
---@field mod_owner 
---@field valid 
---@field object_name 
LuaInventory = {}
LuaInventory.__index = LuaInventory

function LuaInventory.clear() end
function LuaInventory.can_insert() end
function LuaInventory.insert() end
function LuaInventory.remove() end
function LuaInventory.get_item_count() end
function LuaInventory.is_empty() end
function LuaInventory.is_full() end
function LuaInventory.get_contents() end
function LuaInventory.supports_bar() end
function LuaInventory.get_bar() end
function LuaInventory.set_bar() end
function LuaInventory.supports_filters() end
function LuaInventory.is_filtered() end
function LuaInventory.can_set_filter() end
function LuaInventory.get_filter() end
function LuaInventory.set_filter() end
function LuaInventory.find_item_stack() end
function LuaInventory.find_empty_stack() end
function LuaInventory.count_empty_stacks() end
function LuaInventory.get_insertable_count() end
function LuaInventory.sort_and_merge() end
function LuaInventory.resize() end
function LuaInventory.destroy() end
function LuaInventory.help() end

---@class LuaItemPrototype
---@field type 
---@field name 
---@field localised_name 
---@field localised_description 
---@field order 
---@field place_result 
---@field place_as_equipment_result 
---@field place_as_tile_result 
---@field stackable 
---@field default_request_amount 
---@field stack_size 
---@field wire_count 
---@field fuel_category 
---@field burnt_result 
---@field fuel_value 
---@field fuel_acceleration_multiplier 
---@field fuel_top_speed_multiplier 
---@field fuel_emissions_multiplier 
---@field subgroup 
---@field group 
---@field flags 
---@field rocket_launch_products 
---@field can_be_mod_opened 
---@field magazine_size 
---@field reload_time 
---@field equipment_grid 
---@field resistances 
---@field inventory_size_bonus 
---@field capsule_action 
---@field attack_parameters 
---@field inventory_size 
---@field item_filters 
---@field item_group_filters 
---@field item_subgroup_filters 
---@field filter_mode 
---@field insertion_priority_mode 
---@field localised_filter_message 
---@field extend_inventory_by_default 
---@field default_label_color 
---@field draw_label_for_cursor_render 
---@field speed 
---@field module_effects 
---@field category 
---@field tier 
---@field limitations 
---@field limitation_message_key 
---@field straight_rail 
---@field curved_rail 
---@field repair_result 
---@field selection_border_color 
---@field alt_selection_border_color 
---@field reverse_selection_border_color 
---@field alt_reverse_selection_border_color 
---@field selection_mode_flags 
---@field alt_selection_mode_flags 
---@field reverse_selection_mode_flags 
---@field alt_reverse_selection_mode_flags 
---@field selection_cursor_box_type 
---@field alt_selection_cursor_box_type 
---@field reverse_selection_cursor_box_type 
---@field alt_reverse_selection_cursor_box_type 
---@field always_include_tiles 
---@field entity_filter_mode 
---@field alt_entity_filter_mode 
---@field reverse_alt_entity_filter_mode 
---@field alt_reverse_alt_entity_filter_mode 
---@field tile_filter_mode 
---@field alt_tile_filter_mode 
---@field reverse_tile_filter_mode 
---@field alt_reverse_tile_filter_mode 
---@field entity_filters 
---@field alt_entity_filters 
---@field reverse_entity_filters 
---@field alt_reverse_entity_filters 
---@field entity_type_filters 
---@field alt_entity_type_filters 
---@field reverse_entity_type_filters 
---@field alt_reverse_entity_type_filters 
---@field tile_filters 
---@field alt_tile_filters 
---@field reverse_tile_filters 
---@field alt_reverse_tile_filters 
---@field entity_filter_slots 
---@field tile_filter_slots 
---@field durability_description_key 
---@field durability 
---@field infinite 
---@field mapper_count 
---@field valid 
---@field object_name 
LuaItemPrototype = {}
LuaItemPrototype.__index = LuaItemPrototype

function LuaItemPrototype.has_flag() end
function LuaItemPrototype.get_ammo_type() end
function LuaItemPrototype.help() end

---@class LuaItemStack
---@field valid_for_read 
---@field prototype 
---@field name 
---@field type 
---@field count 
---@field grid 
---@field health 
---@field durability 
---@field ammo 
---@field blueprint_icons 
---@field blueprint_snap_to_grid 
---@field blueprint_position_relative_to_grid 
---@field blueprint_absolute_snapping 
---@field label 
---@field label_color 
---@field allow_manual_label_change 
---@field cost_to_build 
---@field extends_inventory 
---@field prioritize_insertion_mode 
---@field default_icons 
---@field tags 
---@field custom_description 
---@field entity_filters 
---@field tile_filters 
---@field entity_filter_mode 
---@field tile_filter_mode 
---@field tile_selection_mode 
---@field trees_and_rocks_only 
---@field entity_filter_count 
---@field tile_filter_count 
---@field active_index 
---@field item_number 
---@field connected_entity 
---@field entity_label 
---@field entity_color 
---@field is_blueprint 
---@field is_blueprint_book 
---@field is_module 
---@field is_tool 
---@field is_mining_tool 
---@field is_armor 
---@field is_repair_tool 
---@field is_item_with_label 
---@field is_item_with_inventory 
---@field is_item_with_entity_data 
---@field is_selection_tool 
---@field is_item_with_tags 
---@field is_deconstruction_item 
---@field is_upgrade_item 
---@field valid 
---@field object_name 
LuaItemStack = {}
LuaItemStack.__index = LuaItemStack

function LuaItemStack.is_blueprint_setup() end
function LuaItemStack.get_blueprint_entities() end
function LuaItemStack.set_blueprint_entities() end
function LuaItemStack.add_ammo() end
function LuaItemStack.drain_ammo() end
function LuaItemStack.add_durability() end
function LuaItemStack.drain_durability() end
function LuaItemStack.use_capsule() end
function LuaItemStack.can_set_stack() end
function LuaItemStack.set_stack() end
function LuaItemStack.transfer_stack() end
function LuaItemStack.export_stack() end
function LuaItemStack.import_stack() end
function LuaItemStack.swap_stack() end
function LuaItemStack.clear() end
function LuaItemStack.get_blueprint_tiles() end
function LuaItemStack.set_blueprint_tiles() end
function LuaItemStack.get_inventory() end
function LuaItemStack.build_blueprint() end
function LuaItemStack.deconstruct_area() end
function LuaItemStack.cancel_deconstruct_area() end
function LuaItemStack.create_blueprint() end
function LuaItemStack.get_tag() end
function LuaItemStack.set_tag() end
function LuaItemStack.remove_tag() end
function LuaItemStack.clear_blueprint() end
function LuaItemStack.get_entity_filter() end
function LuaItemStack.set_entity_filter() end
function LuaItemStack.get_tile_filter() end
function LuaItemStack.set_tile_filter() end
function LuaItemStack.clear_deconstruction_item() end
function LuaItemStack.clear_upgrade_item() end
function LuaItemStack.get_mapper() end
function LuaItemStack.set_mapper() end
function LuaItemStack.get_blueprint_entity_count() end
function LuaItemStack.get_blueprint_entity_tags() end
function LuaItemStack.set_blueprint_entity_tags() end
function LuaItemStack.get_blueprint_entity_tag() end
function LuaItemStack.set_blueprint_entity_tag() end
function LuaItemStack.create_grid() end
function LuaItemStack.help() end

---@class LuaLampControlBehavior
---@field use_colors 
---@field color 
---@field valid 
---@field object_name 
LuaLampControlBehavior = {}
LuaLampControlBehavior.__index = LuaLampControlBehavior

function LuaLampControlBehavior.help() end

---@class LuaLazyLoadedValue
---@field valid 
---@field object_name 
LuaLazyLoadedValue = {}
LuaLazyLoadedValue.__index = LuaLazyLoadedValue

function LuaLazyLoadedValue.get() end
function LuaLazyLoadedValue.help() end

---@class LuaLogisticCell
---@field logistic_radius 
---@field logistics_connection_distance 
---@field construction_radius 
---@field stationed_logistic_robot_count 
---@field stationed_construction_robot_count 
---@field mobile 
---@field transmitting 
---@field charge_approach_distance 
---@field charging_robot_count 
---@field to_charge_robot_count 
---@field owner 
---@field logistic_network 
---@field neighbours 
---@field charging_robots 
---@field to_charge_robots 
---@field valid 
---@field object_name 
LuaLogisticCell = {}
LuaLogisticCell.__index = LuaLogisticCell

function LuaLogisticCell.is_in_logistic_range() end
function LuaLogisticCell.is_in_construction_range() end
function LuaLogisticCell.is_neighbour_with() end
function LuaLogisticCell.help() end

---@class LuaLogisticContainerControlBehavior
---@field circuit_mode_of_operation 
---@field valid 
---@field object_name 
LuaLogisticContainerControlBehavior = {}
LuaLogisticContainerControlBehavior.__index = LuaLogisticContainerControlBehavior

function LuaLogisticContainerControlBehavior.help() end

---@class LuaLogisticNetwork
---@field force 
---@field available_logistic_robots 
---@field all_logistic_robots 
---@field available_construction_robots 
---@field all_construction_robots 
---@field robot_limit 
---@field cells 
---@field providers 
---@field empty_providers 
---@field requesters 
---@field storages 
---@field logistic_members 
---@field provider_points 
---@field passive_provider_points 
---@field active_provider_points 
---@field empty_provider_points 
---@field requester_points 
---@field storage_points 
---@field robots 
---@field construction_robots 
---@field logistic_robots 
---@field valid 
---@field object_name 
LuaLogisticNetwork = {}
LuaLogisticNetwork.__index = LuaLogisticNetwork

function LuaLogisticNetwork.get_item_count() end
function LuaLogisticNetwork.get_contents() end
function LuaLogisticNetwork.remove_item() end
function LuaLogisticNetwork.insert() end
function LuaLogisticNetwork.find_cell_closest_to() end
function LuaLogisticNetwork.select_pickup_point() end
function LuaLogisticNetwork.select_drop_point() end
function LuaLogisticNetwork.can_satisfy_request() end
function LuaLogisticNetwork.get_supply_counts() end
function LuaLogisticNetwork.get_supply_points() end
function LuaLogisticNetwork.help() end

---@class LuaLogisticPoint
---@field owner 
---@field logistic_network 
---@field logistic_member_index 
---@field filters 
---@field mode 
---@field force 
---@field targeted_items_pickup 
---@field targeted_items_deliver 
---@field exact 
---@field valid 
---@field object_name 
LuaLogisticPoint = {}
LuaLogisticPoint.__index = LuaLogisticPoint

function LuaLogisticPoint.help() end

---@class LuaMiningDrillControlBehavior
---@field circuit_enable_disable 
---@field circuit_read_resources 
---@field resource_read_mode 
---@field resource_read_targets 
---@field valid 
---@field object_name 
LuaMiningDrillControlBehavior = {}
LuaMiningDrillControlBehavior.__index = LuaMiningDrillControlBehavior

function LuaMiningDrillControlBehavior.help() end

---@class LuaModSettingPrototype
---@field type 
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field mod 
---@field setting_type 
---@field default_value 
---@field minimum_value 
---@field maximum_value 
---@field allowed_values 
---@field allow_blank 
---@field auto_trim 
---@field hidden 
---@field valid 
---@field object_name 
LuaModSettingPrototype = {}
LuaModSettingPrototype.__index = LuaModSettingPrototype

function LuaModSettingPrototype.help() end

---@class LuaModuleCategoryPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field valid 
---@field object_name 
LuaModuleCategoryPrototype = {}
LuaModuleCategoryPrototype.__index = LuaModuleCategoryPrototype

function LuaModuleCategoryPrototype.help() end

---@class LuaNamedNoiseExpression
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field intended_property 
---@field expression 
---@field valid 
---@field object_name 
LuaNamedNoiseExpression = {}
LuaNamedNoiseExpression.__index = LuaNamedNoiseExpression

function LuaNamedNoiseExpression.help() end

---@class LuaNoiseLayerPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field valid 
---@field object_name 
LuaNoiseLayerPrototype = {}
LuaNoiseLayerPrototype.__index = LuaNoiseLayerPrototype

function LuaNoiseLayerPrototype.help() end

---@class LuaParticlePrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field regular_trigger_effect 
---@field ended_in_water_trigger_effect 
---@field render_layer 
---@field render_layer_when_on_ground 
---@field life_time 
---@field regular_trigger_effect_frequency 
---@field movement_modifier_when_on_ground 
---@field movement_modifier 
---@field mining_particle_frame_speed 
---@field valid 
---@field object_name 
LuaParticlePrototype = {}
LuaParticlePrototype.__index = LuaParticlePrototype

function LuaParticlePrototype.help() end

---@class LuaPermissionGroup
---@field name 
---@field players 
---@field group_id 
---@field valid 
---@field object_name 
LuaPermissionGroup = {}
LuaPermissionGroup.__index = LuaPermissionGroup

function LuaPermissionGroup.add_player() end
function LuaPermissionGroup.remove_player() end
function LuaPermissionGroup.allows_action() end
function LuaPermissionGroup.set_allows_action() end
function LuaPermissionGroup.destroy() end
function LuaPermissionGroup.help() end

---@class LuaPermissionGroups
---@field groups 
---@field valid 
---@field object_name 
LuaPermissionGroups = {}
LuaPermissionGroups.__index = LuaPermissionGroups

function LuaPermissionGroups.create_group() end
function LuaPermissionGroups.get_group() end
function LuaPermissionGroups.help() end

---@class LuaPlayer
---@field character 
---@field cutscene_character 
---@field index 
---@field gui 
---@field opened_self 
---@field controller_type 
---@field stashed_controller_type 
---@field game_view_settings 
---@field minimap_enabled 
---@field color 
---@field chat_color 
---@field name 
---@field tag 
---@field connected 
---@field admin 
---@field entity_copy_source 
---@field afk_time 
---@field online_time 
---@field last_online 
---@field permission_group 
---@field mod_settings 
---@field ticks_to_respawn 
---@field display_resolution 
---@field display_scale 
---@field blueprint_to_setup 
---@field render_mode 
---@field input_method 
---@field spectator 
---@field show_on_map 
---@field remove_unfiltered_items 
---@field infinity_inventory_filters 
---@field auto_sort_main_inventory 
---@field hand_location 
---@field cursor_stack_temporary 
---@field drag_target 
---@field zoom 
---@field map_view_settings 
---@field valid 
---@field object_name 
LuaPlayer = {}
LuaPlayer.__index = LuaPlayer

function LuaPlayer.set_ending_screen_data() end
function LuaPlayer.print() end
function LuaPlayer.clear_console() end
function LuaPlayer.get_goal_description() end
function LuaPlayer.set_goal_description() end
function LuaPlayer.set_controller() end
function LuaPlayer.drag_wire() end
function LuaPlayer.disable_recipe_groups() end
function LuaPlayer.enable_recipe_groups() end
function LuaPlayer.disable_recipe_subgroups() end
function LuaPlayer.enable_recipe_subgroups() end
function LuaPlayer.print_entity_statistics() end
function LuaPlayer.print_robot_jobs() end
function LuaPlayer.print_lua_object_statistics() end
function LuaPlayer.log_active_entity_chunk_counts() end
function LuaPlayer.log_active_entity_counts() end
function LuaPlayer.unlock_achievement() end
function LuaPlayer.clear_cursor() end
function LuaPlayer.create_character() end
function LuaPlayer.add_alert() end
function LuaPlayer.add_custom_alert() end
function LuaPlayer.remove_alert() end
function LuaPlayer.get_alerts() end
function LuaPlayer.mute_alert() end
function LuaPlayer.unmute_alert() end
function LuaPlayer.is_alert_muted() end
function LuaPlayer.enable_alert() end
function LuaPlayer.disable_alert() end
function LuaPlayer.is_alert_enabled() end
function LuaPlayer.pipette_entity() end
function LuaPlayer.can_place_entity() end
function LuaPlayer.can_build_from_cursor() end
function LuaPlayer.build_from_cursor() end
function LuaPlayer.use_from_cursor() end
function LuaPlayer.play_sound() end
function LuaPlayer.get_associated_characters() end
function LuaPlayer.associate_character() end
function LuaPlayer.disassociate_character() end
function LuaPlayer.create_local_flying_text() end
function LuaPlayer.get_quick_bar_slot() end
function LuaPlayer.set_quick_bar_slot() end
function LuaPlayer.get_active_quick_bar_page() end
function LuaPlayer.set_active_quick_bar_page() end
function LuaPlayer.jump_to_cutscene_waypoint() end
function LuaPlayer.exit_cutscene() end
function LuaPlayer.open_map() end
function LuaPlayer.zoom_to_world() end
function LuaPlayer.close_map() end
function LuaPlayer.is_shortcut_toggled() end
function LuaPlayer.is_shortcut_available() end
function LuaPlayer.set_shortcut_toggled() end
function LuaPlayer.set_shortcut_available() end
function LuaPlayer.connect_to_server() end
function LuaPlayer.toggle_map_editor() end
function LuaPlayer.request_translation() end
function LuaPlayer.request_translations() end
function LuaPlayer.get_infinity_inventory_filter() end
function LuaPlayer.set_infinity_inventory_filter() end
function LuaPlayer.clear_recipe_notifications() end
function LuaPlayer.add_recipe_notification() end
function LuaPlayer.add_to_clipboard() end
function LuaPlayer.activate_paste() end
function LuaPlayer.start_selection() end
function LuaPlayer.clear_selection() end
function LuaPlayer.help() end

---@class LuaProfiler
---@field valid 
---@field object_name 
LuaProfiler = {}
LuaProfiler.__index = LuaProfiler

function LuaProfiler.reset() end
function LuaProfiler.stop() end
function LuaProfiler.restart() end
function LuaProfiler.add() end
function LuaProfiler.divide() end
function LuaProfiler.help() end

---@class LuaProgrammableSpeakerControlBehavior
---@field circuit_parameters 
---@field circuit_condition 
---@field valid 
---@field object_name 
LuaProgrammableSpeakerControlBehavior = {}
LuaProgrammableSpeakerControlBehavior.__index = LuaProgrammableSpeakerControlBehavior

function LuaProgrammableSpeakerControlBehavior.help() end

---@class LuaRCON
---@field object_name 
LuaRCON = {}
LuaRCON.__index = LuaRCON

function LuaRCON.print() end

---@class LuaRailChainSignalControlBehavior
---@field red_signal 
---@field orange_signal 
---@field green_signal 
---@field blue_signal 
---@field valid 
---@field object_name 
LuaRailChainSignalControlBehavior = {}
LuaRailChainSignalControlBehavior.__index = LuaRailChainSignalControlBehavior

function LuaRailChainSignalControlBehavior.help() end

---@class LuaRailPath
---@field size 
---@field current 
---@field total_distance 
---@field travelled_distance 
---@field rails 
---@field is_front 
---@field valid 
---@field object_name 
LuaRailPath = {}
LuaRailPath.__index = LuaRailPath

function LuaRailPath.help() end

---@class LuaRailSignalControlBehavior
---@field red_signal 
---@field orange_signal 
---@field green_signal 
---@field close_signal 
---@field read_signal 
---@field circuit_condition 
---@field valid 
---@field object_name 
LuaRailSignalControlBehavior = {}
LuaRailSignalControlBehavior.__index = LuaRailSignalControlBehavior

function LuaRailSignalControlBehavior.help() end

---@class LuaRandomGenerator
---@field valid 
---@field object_name 
LuaRandomGenerator = {}
LuaRandomGenerator.__index = LuaRandomGenerator

function LuaRandomGenerator.re_seed() end
function LuaRandomGenerator.help() end

---@class LuaRecipe
---@field name 
---@field localised_name 
---@field localised_description 
---@field prototype 
---@field enabled 
---@field category 
---@field ingredients 
---@field products 
---@field hidden 
---@field hidden_from_flow_stats 
---@field energy 
---@field order 
---@field group 
---@field subgroup 
---@field force 
---@field valid 
---@field object_name 
LuaRecipe = {}
LuaRecipe.__index = LuaRecipe

function LuaRecipe.reload() end
function LuaRecipe.help() end

---@class LuaRecipeCategoryPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field valid 
---@field object_name 
LuaRecipeCategoryPrototype = {}
LuaRecipeCategoryPrototype.__index = LuaRecipeCategoryPrototype

function LuaRecipeCategoryPrototype.help() end

---@class LuaRecipePrototype
---@field enabled 
---@field name 
---@field localised_name 
---@field localised_description 
---@field category 
---@field ingredients 
---@field products 
---@field main_product 
---@field hidden 
---@field hidden_from_flow_stats 
---@field hidden_from_player_crafting 
---@field always_show_made_in 
---@field energy 
---@field order 
---@field group 
---@field subgroup 
---@field request_paste_multiplier 
---@field overload_multiplier 
---@field allow_inserter_overload 
---@field allow_as_intermediate 
---@field allow_intermediates 
---@field show_amount_in_title 
---@field always_show_products 
---@field emissions_multiplier 
---@field allow_decomposition 
---@field unlock_results 
---@field valid 
---@field object_name 
LuaRecipePrototype = {}
LuaRecipePrototype.__index = LuaRecipePrototype

function LuaRecipePrototype.help() end

---@class LuaRemote
---@field object_name 
---@field interfaces 
LuaRemote = {}
LuaRemote.__index = LuaRemote

function LuaRemote.add_interface() end
function LuaRemote.remove_interface() end
function LuaRemote.call() end

---@class LuaRendering
---@field object_name 
LuaRendering = {}
LuaRendering.__index = LuaRendering

function LuaRendering.draw_line() end
function LuaRendering.draw_text() end
function LuaRendering.draw_circle() end
function LuaRendering.draw_rectangle() end
function LuaRendering.draw_arc() end
function LuaRendering.draw_polygon() end
function LuaRendering.draw_sprite() end
function LuaRendering.draw_light() end
function LuaRendering.draw_animation() end
function LuaRendering.destroy() end
function LuaRendering.is_font_valid() end
function LuaRendering.is_valid() end
function LuaRendering.get_all_ids() end
function LuaRendering.clear() end
function LuaRendering.get_type() end
function LuaRendering.bring_to_front() end
function LuaRendering.get_surface() end
function LuaRendering.get_time_to_live() end
function LuaRendering.set_time_to_live() end
function LuaRendering.get_forces() end
function LuaRendering.set_forces() end
function LuaRendering.get_players() end
function LuaRendering.set_players() end
function LuaRendering.get_visible() end
function LuaRendering.set_visible() end
function LuaRendering.get_draw_on_ground() end
function LuaRendering.set_draw_on_ground() end
function LuaRendering.get_only_in_alt_mode() end
function LuaRendering.set_only_in_alt_mode() end
function LuaRendering.get_use_target_orientation() end
function LuaRendering.set_use_target_orientation() end
function LuaRendering.get_color() end
function LuaRendering.set_color() end
function LuaRendering.get_width() end
function LuaRendering.set_width() end
function LuaRendering.get_from() end
function LuaRendering.set_from() end
function LuaRendering.get_to() end
function LuaRendering.set_to() end
function LuaRendering.get_dash_length() end
function LuaRendering.set_dash_length() end
function LuaRendering.get_gap_length() end
function LuaRendering.set_gap_length() end
function LuaRendering.set_dashes() end
function LuaRendering.get_target() end
function LuaRendering.set_target() end
function LuaRendering.get_orientation() end
function LuaRendering.set_orientation() end
function LuaRendering.get_scale() end
function LuaRendering.set_scale() end
function LuaRendering.get_text() end
function LuaRendering.set_text() end
function LuaRendering.get_font() end
function LuaRendering.set_font() end
function LuaRendering.get_alignment() end
function LuaRendering.set_alignment() end
function LuaRendering.get_vertical_alignment() end
function LuaRendering.set_vertical_alignment() end
function LuaRendering.get_scale_with_zoom() end
function LuaRendering.set_scale_with_zoom() end
function LuaRendering.get_use_rich_text() end
function LuaRendering.set_use_rich_text() end
function LuaRendering.get_filled() end
function LuaRendering.set_filled() end
function LuaRendering.get_radius() end
function LuaRendering.set_radius() end
function LuaRendering.get_left_top() end
function LuaRendering.set_left_top() end
function LuaRendering.get_right_bottom() end
function LuaRendering.set_right_bottom() end
function LuaRendering.set_corners() end
function LuaRendering.get_max_radius() end
function LuaRendering.set_max_radius() end
function LuaRendering.get_min_radius() end
function LuaRendering.set_min_radius() end
function LuaRendering.get_start_angle() end
function LuaRendering.set_start_angle() end
function LuaRendering.get_angle() end
function LuaRendering.set_angle() end
function LuaRendering.get_vertices() end
function LuaRendering.set_vertices() end
function LuaRendering.get_sprite() end
function LuaRendering.set_sprite() end
function LuaRendering.get_x_scale() end
function LuaRendering.set_x_scale() end
function LuaRendering.get_y_scale() end
function LuaRendering.set_y_scale() end
function LuaRendering.get_render_layer() end
function LuaRendering.set_render_layer() end
function LuaRendering.get_orientation_target() end
function LuaRendering.set_orientation_target() end
function LuaRendering.get_oriented_offset() end
function LuaRendering.set_oriented_offset() end
function LuaRendering.get_intensity() end
function LuaRendering.set_intensity() end
function LuaRendering.get_minimum_darkness() end
function LuaRendering.set_minimum_darkness() end
function LuaRendering.get_oriented() end
function LuaRendering.set_oriented() end
function LuaRendering.get_animation() end
function LuaRendering.set_animation() end
function LuaRendering.get_animation_speed() end
function LuaRendering.set_animation_speed() end
function LuaRendering.get_animation_offset() end
function LuaRendering.set_animation_offset() end

---@class LuaResourceCategoryPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field valid 
---@field object_name 
LuaResourceCategoryPrototype = {}
LuaResourceCategoryPrototype.__index = LuaResourceCategoryPrototype

function LuaResourceCategoryPrototype.help() end

---@class LuaRoboportControlBehavior
---@field read_logistics 
---@field read_robot_stats 
---@field available_logistic_output_signal 
---@field total_logistic_output_signal 
---@field available_construction_output_signal 
---@field total_construction_output_signal 
---@field valid 
---@field object_name 
LuaRoboportControlBehavior = {}
LuaRoboportControlBehavior.__index = LuaRoboportControlBehavior

function LuaRoboportControlBehavior.help() end

---@class LuaSettings
---@field startup 
---@field global 
---@field player 
---@field object_name 
LuaSettings = {}
LuaSettings.__index = LuaSettings

function LuaSettings.get_player_settings() end

---@class LuaShortcutPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field action 
---@field item_to_spawn 
---@field technology_to_unlock 
---@field toggleable 
---@field associated_control_input 
---@field valid 
---@field object_name 
LuaShortcutPrototype = {}
LuaShortcutPrototype.__index = LuaShortcutPrototype

function LuaShortcutPrototype.help() end

---@class LuaStorageTankControlBehavior
---@field valid 
---@field object_name 
LuaStorageTankControlBehavior = {}
LuaStorageTankControlBehavior.__index = LuaStorageTankControlBehavior

function LuaStorageTankControlBehavior.help() end

---@class LuaStyle
---@field gui 
---@field name 
---@field minimal_width 
---@field maximal_width 
---@field minimal_height 
---@field maximal_height 
---@field natural_width 
---@field natural_height 
---@field top_padding 
---@field right_padding 
---@field bottom_padding 
---@field left_padding 
---@field top_margin 
---@field right_margin 
---@field bottom_margin 
---@field left_margin 
---@field horizontal_align 
---@field vertical_align 
---@field font_color 
---@field font 
---@field top_cell_padding 
---@field right_cell_padding 
---@field bottom_cell_padding 
---@field left_cell_padding 
---@field horizontally_stretchable 
---@field vertically_stretchable 
---@field horizontally_squashable 
---@field vertically_squashable 
---@field rich_text_setting 
---@field hovered_font_color 
---@field clicked_font_color 
---@field disabled_font_color 
---@field pie_progress_color 
---@field clicked_vertical_offset 
---@field selected_font_color 
---@field selected_hovered_font_color 
---@field selected_clicked_font_color 
---@field strikethrough_color 
---@field draw_grayscale_picture 
---@field horizontal_spacing 
---@field vertical_spacing 
---@field use_header_filler 
---@field bar_width 
---@field color 
---@field column_alignments 
---@field single_line 
---@field extra_top_padding_when_activated 
---@field extra_bottom_padding_when_activated 
---@field extra_left_padding_when_activated 
---@field extra_right_padding_when_activated 
---@field extra_top_margin_when_activated 
---@field extra_bottom_margin_when_activated 
---@field extra_left_margin_when_activated 
---@field extra_right_margin_when_activated 
---@field stretch_image_to_widget_size 
---@field badge_font 
---@field badge_horizontal_spacing 
---@field default_badge_font_color 
---@field selected_badge_font_color 
---@field disabled_badge_font_color 
---@field width 
---@field height 
---@field size 
---@field padding 
---@field margin 
---@field cell_padding 
---@field extra_padding_when_activated 
---@field extra_margin_when_activated 
---@field valid 
---@field object_name 
LuaStyle = {}
LuaStyle.__index = LuaStyle

function LuaStyle.help() end

---@class LuaSurface
---@field name 
---@field index 
---@field map_gen_settings 
---@field generate_with_lab_tiles 
---@field always_day 
---@field daytime 
---@field darkness 
---@field wind_speed 
---@field wind_orientation 
---@field wind_orientation_change 
---@field peaceful_mode 
---@field freeze_daytime 
---@field ticks_per_day 
---@field dusk 
---@field dawn 
---@field evening 
---@field morning 
---@field solar_power_multiplier 
---@field min_brightness 
---@field brightness_visual_weights 
---@field show_clouds 
---@field valid 
---@field object_name 
LuaSurface = {}
LuaSurface.__index = LuaSurface

function LuaSurface.get_pollution() end
function LuaSurface.can_place_entity() end
function LuaSurface.can_fast_replace() end
function LuaSurface.find_entity() end
function LuaSurface.find_entities() end
function LuaSurface.find_entities_filtered() end
function LuaSurface.find_tiles_filtered() end
function LuaSurface.count_entities_filtered() end
function LuaSurface.count_tiles_filtered() end
function LuaSurface.find_non_colliding_position() end
function LuaSurface.find_non_colliding_position_in_box() end
function LuaSurface.spill_item_stack() end
function LuaSurface.find_enemy_units() end
function LuaSurface.find_units() end
function LuaSurface.find_nearest_enemy() end
function LuaSurface.find_nearest_enemy_entity_with_owner() end
function LuaSurface.set_multi_command() end
function LuaSurface.create_entity() end
function LuaSurface.create_trivial_smoke() end
function LuaSurface.create_particle() end
function LuaSurface.create_unit_group() end
function LuaSurface.build_enemy_base() end
function LuaSurface.get_tile() end
function LuaSurface.set_tiles() end
function LuaSurface.pollute() end
function LuaSurface.get_chunks() end
function LuaSurface.is_chunk_generated() end
function LuaSurface.request_to_generate_chunks() end
function LuaSurface.force_generate_chunk_requests() end
function LuaSurface.set_chunk_generated_status() end
function LuaSurface.find_logistic_network_by_position() end
function LuaSurface.find_closest_logistic_network_by_position() end
function LuaSurface.find_logistic_networks_by_construction_area() end
function LuaSurface.deconstruct_area() end
function LuaSurface.cancel_deconstruct_area() end
function LuaSurface.upgrade_area() end
function LuaSurface.cancel_upgrade_area() end
function LuaSurface.get_hidden_tile() end
function LuaSurface.set_hidden_tile() end
function LuaSurface.get_connected_tiles() end
function LuaSurface.delete_chunk() end
function LuaSurface.regenerate_entity() end
function LuaSurface.regenerate_decorative() end
function LuaSurface.print() end
function LuaSurface.destroy_decoratives() end
function LuaSurface.create_decoratives() end
function LuaSurface.find_decoratives_filtered() end
function LuaSurface.get_trains() end
function LuaSurface.clear_pollution() end
function LuaSurface.play_sound() end
function LuaSurface.get_resource_counts() end
function LuaSurface.get_random_chunk() end
function LuaSurface.clone_area() end
function LuaSurface.clone_brush() end
function LuaSurface.clone_entities() end
function LuaSurface.clear() end
function LuaSurface.request_path() end
function LuaSurface.get_script_areas() end
function LuaSurface.get_script_area() end
function LuaSurface.edit_script_area() end
function LuaSurface.add_script_area() end
function LuaSurface.remove_script_area() end
function LuaSurface.get_script_positions() end
function LuaSurface.get_script_position() end
function LuaSurface.edit_script_position() end
function LuaSurface.add_script_position() end
function LuaSurface.remove_script_position() end
function LuaSurface.get_map_exchange_string() end
function LuaSurface.get_starting_area_radius() end
function LuaSurface.get_closest() end
function LuaSurface.get_train_stops() end
function LuaSurface.get_total_pollution() end
function LuaSurface.entity_prototype_collides() end
function LuaSurface.decorative_prototype_collides() end
function LuaSurface.calculate_tile_properties() end
function LuaSurface.get_entities_with_force() end
function LuaSurface.build_checkerboard() end
function LuaSurface.help() end

---@class LuaTechnology
---@field force 
---@field name 
---@field localised_name 
---@field localised_description 
---@field prototype 
---@field enabled 
---@field visible_when_disabled 
---@field upgrade 
---@field researched 
---@field prerequisites 
---@field research_unit_ingredients 
---@field effects 
---@field research_unit_count 
---@field research_unit_energy 
---@field order 
---@field level 
---@field research_unit_count_formula 
---@field valid 
---@field object_name 
LuaTechnology = {}
LuaTechnology.__index = LuaTechnology

function LuaTechnology.reload() end
function LuaTechnology.help() end

---@class LuaTechnologyPrototype
---@field name 
---@field localised_name 
---@field localised_description 
---@field enabled 
---@field hidden 
---@field visible_when_disabled 
---@field ignore_tech_cost_multiplier 
---@field upgrade 
---@field prerequisites 
---@field research_unit_ingredients 
---@field effects 
---@field research_unit_count 
---@field research_unit_energy 
---@field order 
---@field level 
---@field max_level 
---@field research_unit_count_formula 
---@field valid 
---@field object_name 
LuaTechnologyPrototype = {}
LuaTechnologyPrototype.__index = LuaTechnologyPrototype

function LuaTechnologyPrototype.help() end

---@class LuaTile
---@field name 
---@field prototype 
---@field position 
---@field hidden_tile 
---@field surface 
---@field valid 
---@field object_name 
LuaTile = {}
LuaTile.__index = LuaTile

function LuaTile.collides_with() end
function LuaTile.to_be_deconstructed() end
function LuaTile.order_deconstruction() end
function LuaTile.cancel_deconstruction() end
function LuaTile.has_tile_ghost() end
function LuaTile.get_tile_ghosts() end
function LuaTile.help() end

---@class LuaTilePrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field collision_mask 
---@field collision_mask_with_flags 
---@field layer 
---@field autoplace_specification 
---@field walking_speed_modifier 
---@field vehicle_friction_modifier 
---@field map_color 
---@field decorative_removal_probability 
---@field automatic_neighbors 
---@field allowed_neighbors 
---@field needs_correction 
---@field mineable_properties 
---@field next_direction 
---@field items_to_place_this 
---@field can_be_part_of_blueprint 
---@field emissions_per_second 
---@field check_collision_with_entities 
---@field valid 
---@field object_name 
LuaTilePrototype = {}
LuaTilePrototype.__index = LuaTilePrototype

function LuaTilePrototype.help() end

---@class LuaTrain
---@field manual_mode 
---@field speed 
---@field max_forward_speed 
---@field max_backward_speed 
---@field weight 
---@field carriages 
---@field locomotives 
---@field cargo_wagons 
---@field fluid_wagons 
---@field schedule 
---@field state 
---@field front_rail 
---@field back_rail 
---@field rail_direction_from_front_rail 
---@field rail_direction_from_back_rail 
---@field front_stock 
---@field back_stock 
---@field station 
---@field has_path 
---@field path_end_rail 
---@field path_end_stop 
---@field id 
---@field passengers 
---@field riding_state 
---@field killed_players 
---@field kill_count 
---@field path 
---@field signal 
---@field valid 
---@field object_name 
LuaTrain = {}
LuaTrain.__index = LuaTrain

function LuaTrain.get_item_count() end
function LuaTrain.get_contents() end
function LuaTrain.remove_item() end
function LuaTrain.insert() end
function LuaTrain.clear_items_inside() end
function LuaTrain.recalculate_path() end
function LuaTrain.get_fluid_count() end
function LuaTrain.get_fluid_contents() end
function LuaTrain.remove_fluid() end
function LuaTrain.insert_fluid() end
function LuaTrain.clear_fluids_inside() end
function LuaTrain.go_to_station() end
function LuaTrain.get_rails() end
function LuaTrain.help() end

---@class LuaTrainStopControlBehavior
---@field send_to_train 
---@field read_from_train 
---@field read_stopped_train 
---@field set_trains_limit 
---@field read_trains_count 
---@field enable_disable 
---@field stopped_train_signal 
---@field trains_count_signal 
---@field trains_limit_signal 
---@field valid 
---@field object_name 
LuaTrainStopControlBehavior = {}
LuaTrainStopControlBehavior.__index = LuaTrainStopControlBehavior

function LuaTrainStopControlBehavior.help() end

---@class LuaTransportBeltControlBehavior
---@field enable_disable 
---@field read_contents 
---@field read_contents_mode 
---@field valid 
---@field object_name 
LuaTransportBeltControlBehavior = {}
LuaTransportBeltControlBehavior.__index = LuaTransportBeltControlBehavior

function LuaTransportBeltControlBehavior.help() end

---@class LuaTransportLine
---@field owner 
---@field output_lines 
---@field input_lines 
---@field valid 
---@field object_name 
LuaTransportLine = {}
LuaTransportLine.__index = LuaTransportLine

function LuaTransportLine.clear() end
function LuaTransportLine.get_item_count() end
function LuaTransportLine.remove_item() end
function LuaTransportLine.can_insert_at() end
function LuaTransportLine.can_insert_at_back() end
function LuaTransportLine.insert_at() end
function LuaTransportLine.insert_at_back() end
function LuaTransportLine.get_contents() end
function LuaTransportLine.line_equals() end
function LuaTransportLine.help() end

---@class LuaTrivialSmokePrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field color 
---@field start_scale 
---@field end_scale 
---@field movement_slow_down_factor 
---@field duration 
---@field spread_duration 
---@field fade_away_duration 
---@field fade_in_duration 
---@field glow_fade_away_duration 
---@field cyclic 
---@field affected_by_wind 
---@field show_when_smoke_off 
---@field glow_animation 
---@field render_layer 
---@field valid 
---@field object_name 
LuaTrivialSmokePrototype = {}
LuaTrivialSmokePrototype.__index = LuaTrivialSmokePrototype

function LuaTrivialSmokePrototype.help() end

---@class LuaUnitGroup
---@field members 
---@field position 
---@field state 
---@field force 
---@field surface 
---@field group_number 
---@field is_script_driven 
---@field command 
---@field distraction_command 
---@field valid 
---@field object_name 
LuaUnitGroup = {}
LuaUnitGroup.__index = LuaUnitGroup

function LuaUnitGroup.add_member() end
function LuaUnitGroup.set_command() end
function LuaUnitGroup.set_distraction_command() end
function LuaUnitGroup.set_autonomous() end
function LuaUnitGroup.start_moving() end
function LuaUnitGroup.destroy() end
function LuaUnitGroup.help() end

---@class LuaVirtualSignalPrototype
---@field name 
---@field order 
---@field localised_name 
---@field localised_description 
---@field special 
---@field subgroup 
---@field valid 
---@field object_name 
LuaVirtualSignalPrototype = {}
LuaVirtualSignalPrototype.__index = LuaVirtualSignalPrototype

function LuaVirtualSignalPrototype.help() end

---@class LuaVoidEnergySourcePrototype
---@field emissions 
---@field render_no_network_icon 
---@field render_no_power_icon 
---@field valid 
---@field object_name 
LuaVoidEnergySourcePrototype = {}
LuaVoidEnergySourcePrototype.__index = LuaVoidEnergySourcePrototype

function LuaVoidEnergySourcePrototype.help() end

---@class LuaWallControlBehavior
---@field circuit_condition 
---@field open_gate 
---@field read_sensor 
---@field output_signal 
---@field valid 
---@field object_name 
LuaWallControlBehavior = {}
LuaWallControlBehavior.__index = LuaWallControlBehavior

function LuaWallControlBehavior.help() end

