---@meta
---@class float 
---@class double 
---@class int 
---@class int8 
---@class uint 
---@class uint8 
---@class uint16 
---@class uint64 
---@class array<T>: {[integer]: T}
---@class dictionary<T>: {[string]: T}
local constants = setmetatable({}, {
    __index = {events = setmetatable({}, {__index = {E = ""}})}
})

---@class LuaBootstrap
---@field mod_name string
---@field level table
---@field active_mods dictionary[string → string]
---@field object_name string
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
---@field owner LuaEntity|LuaEquipment
---@field inventory LuaInventory
---@field burnt_result_inventory LuaInventory
---@field heat double
---@field heat_capacity double
---@field remaining_burning_fuel double
---@field currently_burning LuaItemPrototype|nil
---@field fuel_categories dictionary[string → boolean]
---@field valid boolean
---@field object_name string
LuaBurner = {}
LuaBurner.__index = LuaBurner

function LuaBurner.help() end

---@class LuaBurnerPrototype
---@field emissions double
---@field render_no_network_icon boolean
---@field render_no_power_icon boolean
---@field effectivity double
---@field fuel_inventory_size uint
---@field burnt_inventory_size uint
---@field smoke array[SmokeSource]|nil
---@field light_flicker table|nil
---@field fuel_categories dictionary[string → boolean]
---@field valid boolean
---@field object_name string
LuaBurnerPrototype = {}
LuaBurnerPrototype.__index = LuaBurnerPrototype

function LuaBurnerPrototype.help() end

---@class LuaChunkIterator
---@field valid boolean
---@field object_name string
LuaChunkIterator = {}
LuaChunkIterator.__index = LuaChunkIterator

function LuaChunkIterator.help() end

---@class LuaCircuitNetwork
---@field entity LuaEntity
---@field wire_type defines.wire_type
---@field circuit_connector_id defines.circuit_connector_id
---@field signals array[Signal]|nil
---@field network_id uint
---@field connected_circuit_count uint
---@field valid boolean
---@field object_name string
LuaCircuitNetwork = {}
LuaCircuitNetwork.__index = LuaCircuitNetwork

function LuaCircuitNetwork.get_signal() end
function LuaCircuitNetwork.help() end

---@class LuaCombinatorControlBehavior
---@field signals_last_tick array[Signal]
LuaCombinatorControlBehavior = {}
LuaCombinatorControlBehavior.__index = LuaCombinatorControlBehavior

function LuaCombinatorControlBehavior.get_signal_last_tick() end

---@class LuaCommandProcessor
---@field commands dictionary[string → LocalisedString]
---@field game_commands dictionary[string → LocalisedString]
---@field object_name string
LuaCommandProcessor = {}
LuaCommandProcessor.__index = LuaCommandProcessor

function LuaCommandProcessor.add_command() end
function LuaCommandProcessor.remove_command() end

---@class LuaConstantCombinatorControlBehavior
---@field parameters array[ConstantCombinatorParameters]|nil
---@field enabled boolean
---@field signals_count uint
---@field valid boolean
---@field object_name string
LuaConstantCombinatorControlBehavior = {}
LuaConstantCombinatorControlBehavior.__index =
    LuaConstantCombinatorControlBehavior

function LuaConstantCombinatorControlBehavior.set_signal() end
function LuaConstantCombinatorControlBehavior.get_signal() end
function LuaConstantCombinatorControlBehavior.help() end

---@class LuaContainerControlBehavior
---@field valid boolean
---@field object_name string
LuaContainerControlBehavior = {}
LuaContainerControlBehavior.__index = LuaContainerControlBehavior

function LuaContainerControlBehavior.help() end

---@class LuaControl
---@field surface LuaSurface
---@field surface_index uint
---@field position MapPosition
---@field vehicle LuaEntity|nil
---@field force ForceIdentification
---@field force_index uint
---@field selected LuaEntity|nil
---@field opened LuaEntity|LuaItemStack|LuaEquipment|LuaEquipmentGrid|LuaPlayer|LuaGuiElement|LuaInventory|LuaTechnology|defines.gui_type|nil
---@field crafting_queue_size uint
---@field crafting_queue_progress double
---@field walking_state table
---@field riding_state RidingState
---@field mining_state table
---@field shooting_state table
---@field picking_state boolean
---@field repair_state table
---@field cursor_stack LuaItemStack|nil
---@field cursor_ghost ItemPrototypeIdentification|nil
---@field driving boolean
---@field crafting_queue array[CraftingQueueItem]
---@field following_robots array[LuaEntity]
---@field cheat_mode boolean
---@field character_crafting_speed_modifier double
---@field character_mining_speed_modifier double
---@field character_additional_mining_categories array[string]
---@field character_running_speed_modifier double
---@field character_build_distance_bonus uint
---@field character_item_drop_distance_bonus uint
---@field character_reach_distance_bonus uint
---@field character_resource_reach_distance_bonus uint
---@field character_item_pickup_distance_bonus uint
---@field character_loot_pickup_distance_bonus uint
---@field character_inventory_slots_bonus uint
---@field character_trash_slot_count_bonus uint
---@field character_maximum_following_robot_count_bonus uint
---@field character_health_bonus float
---@field character_personal_logistic_requests_enabled boolean
---@field vehicle_logistic_requests_enabled boolean
---@field opened_gui_type defines.gui_type|nil
---@field build_distance uint
---@field drop_item_distance uint
---@field reach_distance uint
---@field item_pickup_distance double
---@field loot_pickup_distance double
---@field resource_reach_distance double
---@field in_combat boolean
---@field character_running_speed double
---@field character_mining_progress double
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
---@field type defines.control_behavior.type
---@field entity LuaEntity
LuaControlBehavior = {}
LuaControlBehavior.__index = LuaControlBehavior

function LuaControlBehavior.get_circuit_network() end

---@class LuaCustomChartTag
---@field icon SignalID
---@field last_user LuaPlayer|nil
---@field position MapPosition
---@field text string
---@field tag_number uint
---@field force LuaForce
---@field surface LuaSurface
---@field valid boolean
---@field object_name string
LuaCustomChartTag = {}
LuaCustomChartTag.__index = LuaCustomChartTag

function LuaCustomChartTag.destroy() end
function LuaCustomChartTag.help() end

---@class LuaCustomInputPrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field key_sequence string
---@field alternative_key_sequence string|nil
---@field controller_key_sequence string|nil
---@field controller_alternative_key_sequence string|nil
---@field linked_game_control string|nil
---@field consuming "none"|"game-only"
---@field action string
---@field enabled boolean
---@field enabled_while_spectating boolean
---@field enabled_while_in_cutscene boolean
---@field include_selected_prototype boolean
---@field item_to_spawn LuaItemPrototype|nil
---@field valid boolean
---@field object_name string
LuaCustomInputPrototype = {}
LuaCustomInputPrototype.__index = LuaCustomInputPrototype

function LuaCustomInputPrototype.help() end

---@class LuaCustomTable
---@field valid boolean
---@field object_name string
LuaCustomTable = {}
LuaCustomTable.__index = LuaCustomTable

function LuaCustomTable.help() end

---@class LuaDamagePrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field hidden boolean
---@field valid boolean
---@field object_name string
LuaDamagePrototype = {}
LuaDamagePrototype.__index = LuaDamagePrototype

function LuaDamagePrototype.help() end

---@class LuaDeciderCombinatorControlBehavior
---@field parameters DeciderCombinatorParameters
---@field valid boolean
---@field object_name string
LuaDeciderCombinatorControlBehavior = {}
LuaDeciderCombinatorControlBehavior.__index =
    LuaDeciderCombinatorControlBehavior

function LuaDeciderCombinatorControlBehavior.help() end

---@class LuaDecorativePrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field collision_box BoundingBox
---@field collision_mask CollisionMask
---@field collision_mask_with_flags CollisionMaskWithFlags
---@field autoplace_specification AutoplaceSpecification|nil
---@field valid boolean
---@field object_name string
LuaDecorativePrototype = {}
LuaDecorativePrototype.__index = LuaDecorativePrototype

function LuaDecorativePrototype.help() end

---@class LuaElectricEnergySourcePrototype
---@field buffer_capacity double
---@field usage_priority string
---@field input_flow_limit double
---@field output_flow_limit double
---@field drain double
---@field emissions double
---@field render_no_network_icon boolean
---@field render_no_power_icon boolean
---@field valid boolean
---@field object_name string
LuaElectricEnergySourcePrototype = {}
LuaElectricEnergySourcePrototype.__index = LuaElectricEnergySourcePrototype

function LuaElectricEnergySourcePrototype.help() end

---@class LuaEntity
---@field name string
---@field ghost_name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field ghost_localised_name LocalisedString
---@field ghost_localised_description LocalisedString
---@field type string
---@field ghost_type string
---@field active boolean
---@field destructible boolean
---@field minable boolean
---@field rotatable boolean
---@field operable boolean
---@field health float|nil
---@field direction defines.direction
---@field supports_direction boolean
---@field orientation RealOrientation
---@field cliff_orientation CliffOrientation
---@field relative_turret_orientation RealOrientation|nil
---@field torso_orientation RealOrientation
---@field amount uint
---@field initial_amount uint|nil
---@field effectivity_modifier float
---@field consumption_modifier float
---@field friction_modifier float
---@field driver_is_gunner boolean|nil
---@field vehicle_automatic_targeting_parameters VehicleAutomaticTargetingParameters
---@field speed float|nil
---@field effective_speed float|nil
---@field stack LuaItemStack
---@field prototype LuaEntityPrototype
---@field ghost_prototype LuaEntityPrototype|LuaTilePrototype
---@field drop_position MapPosition
---@field pickup_position MapPosition
---@field drop_target LuaEntity|nil
---@field pickup_target LuaEntity|nil
---@field selected_gun_index uint|nil
---@field energy double
---@field temperature double|nil
---@field previous_recipe LuaRecipe|nil
---@field held_stack LuaItemStack
---@field held_stack_position MapPosition
---@field train LuaTrain|nil
---@field neighbours dictionary[string → array[LuaEntity]]|array[array[LuaEntity]]|LuaEntity
---@field belt_neighbours table
---@field fluidbox LuaFluidBox
---@field backer_name string|nil
---@field entity_label string|nil
---@field time_to_live uint
---@field color Color|nil
---@field text LocalisedString
---@field signal_state defines.signal_state
---@field chain_signal_state defines.chain_signal_state
---@field to_be_looted boolean
---@field crafting_speed double
---@field crafting_progress float
---@field bonus_progress double
---@field productivity_bonus double
---@field pollution_bonus double
---@field speed_bonus double
---@field consumption_bonus double
---@field belt_to_ground_type "input"|"output"
---@field loader_type "input"|"output"
---@field rocket_parts uint
---@field logistic_network LuaLogisticNetwork
---@field logistic_cell LuaLogisticCell
---@field item_requests dictionary[string → uint]
---@field player LuaPlayer|nil
---@field unit_group LuaUnitGroup|nil
---@field damage_dealt double
---@field kills uint
---@field last_user LuaPlayer|PlayerIdentification|nil
---@field electric_buffer_size double|nil
---@field electric_input_flow_limit double|nil
---@field electric_output_flow_limit double|nil
---@field electric_drain double|nil
---@field electric_emissions double|nil
---@field unit_number uint|nil
---@field ghost_unit_number uint|nil
---@field mining_progress double|nil
---@field bonus_mining_progress double|nil
---@field power_production double
---@field power_usage double
---@field bounding_box BoundingBox
---@field secondary_bounding_box BoundingBox|nil
---@field selection_box BoundingBox
---@field secondary_selection_box BoundingBox|nil
---@field mining_target LuaEntity|nil
---@field circuit_connected_entities table|nil
---@field circuit_connection_definitions array[CircuitConnectionDefinition]|nil
---@field copper_connection_definitions array[CopperConnectionDefinition]
---@field request_slot_count uint
---@field filter_slot_count uint
---@field loader_container LuaEntity|nil
---@field grid LuaEquipmentGrid|nil
---@field graphics_variation uint8|nil
---@field tree_color_index uint8
---@field tree_color_index_max uint8
---@field tree_stage_index uint8
---@field tree_stage_index_max uint8
---@field tree_gray_stage_index uint8
---@field tree_gray_stage_index_max uint8
---@field burner LuaBurner|nil
---@field shooting_target LuaEntity|nil
---@field proxy_target LuaEntity|nil
---@field stickers array[LuaEntity]|nil
---@field sticked_to LuaEntity
---@field sticker_vehicle_modifiers table|nil
---@field parameters ProgrammableSpeakerParameters
---@field alert_parameters ProgrammableSpeakerAlertParameters
---@field electric_network_statistics LuaFlowStatistics
---@field inserter_target_pickup_count uint
---@field inserter_stack_size_override uint
---@field products_finished uint
---@field spawner LuaEntity|nil
---@field spawning_cooldown double
---@field absorbed_pollution double
---@field spawn_shift double
---@field units array[LuaEntity]
---@field power_switch_state boolean
---@field effects ModuleEffects|nil
---@field beacons_count uint|nil
---@field infinity_container_filters array[InfinityInventoryFilter]
---@field remove_unfiltered_items boolean
---@field character_corpse_player_index uint
---@field character_corpse_tick_of_death uint
---@field character_corpse_death_cause LocalisedString
---@field associated_player LuaPlayer|PlayerIdentification|nil
---@field tick_of_last_attack uint
---@field tick_of_last_damage uint
---@field splitter_filter LuaItemPrototype|nil
---@field inserter_filter_mode "whitelist"|"blacklist"|nil
---@field splitter_input_priority "left"|"none"|"right"
---@field splitter_output_priority "left"|"none"|"right"
---@field armed boolean
---@field recipe_locked boolean
---@field connected_rail LuaEntity|nil
---@field connected_rail_direction defines.rail_direction
---@field trains_in_block uint
---@field timeout uint
---@field neighbour_bonus double
---@field ai_settings LuaAISettings
---@field highlight_box_type CursorBoxRenderType
---@field highlight_box_blink_interval uint
---@field status defines.entity_status|nil
---@field enable_logistics_while_moving boolean
---@field render_player LuaPlayer|PlayerIdentification|nil
---@field render_to_forces array[ForceIdentification]|nil
---@field pump_rail_target LuaEntity|nil
---@field moving boolean
---@field electric_network_id uint|nil
---@field allow_dispatching_robots boolean
---@field auto_launch boolean
---@field energy_generated_last_tick double
---@field storage_filter LuaItemPrototype|nil
---@field request_from_buffers boolean
---@field corpse_expires boolean
---@field corpse_immune_to_entity_placement boolean
---@field tags Tags|nil
---@field command Command|nil
---@field distraction_command Command|nil
---@field time_to_next_effect uint
---@field autopilot_destination MapPosition|nil
---@field autopilot_destinations array[MapPosition]
---@field trains_count uint
---@field trains_limit uint
---@field is_entity_with_force boolean
---@field is_military_target boolean
---@field is_entity_with_owner boolean
---@field is_entity_with_health boolean
---@field combat_robot_owner LuaEntity|nil
---@field link_id uint
---@field follow_target LuaEntity|nil
---@field follow_offset Vector|nil
---@field linked_belt_type "input"|"output"
---@field linked_belt_neighbour LuaEntity|nil
---@field radar_scan_progress float
---@field rocket_silo_status defines.rocket_silo_status
---@field tile_width uint
---@field tile_height uint
---@field is_headed_to_trains_front boolean
---@field draw_data RollingStockDrawData
---@field belt_shape "straight"|"left"|"right"
---@field gps_tag string
---@field valid boolean
---@field object_name string
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
---@field type string
---@field name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field max_health float
---@field infinite_resource boolean|nil
---@field minimum_resource_amount uint|nil
---@field normal_resource_amount uint|nil
---@field infinite_depletion_resource_amount uint|nil
---@field resource_category string|nil
---@field mineable_properties table
---@field items_to_place_this array[ItemStackDefinition]|nil
---@field collision_box BoundingBox
---@field secondary_collision_box BoundingBox|nil
---@field map_generator_bounding_box BoundingBox
---@field selection_box BoundingBox
---@field drawing_box BoundingBox
---@field sticker_box BoundingBox
---@field collision_mask CollisionMask
---@field collision_mask_with_flags CollisionMaskWithFlags
---@field default_collision_mask_with_flags CollisionMaskWithFlags
---@field order string
---@field group LuaGroup
---@field subgroup LuaGroup
---@field healing_per_tick float|nil
---@field emissions_per_second double
---@field corpses dictionary[string → LuaEntityPrototype]|nil
---@field selectable_in_game boolean
---@field selection_priority uint
---@field weight double|nil
---@field resistances dictionary[string → Resistance]|nil
---@field fast_replaceable_group string|nil
---@field next_upgrade LuaEntityPrototype|nil
---@field loot array[Loot]|nil
---@field repair_speed_modifier uint|nil
---@field turret_range uint|nil
---@field autoplace_specification AutoplaceSpecification|nil
---@field belt_speed double|nil
---@field result_units array[UnitSpawnDefinition]|nil
---@field attack_result array[TriggerItem]|nil
---@field final_attack_result array[TriggerItem]|nil
---@field attack_parameters AttackParameters|nil
---@field spawn_cooldown table|nil
---@field mining_drill_radius double|nil
---@field mining_speed double|nil
---@field logistic_mode "requester"|"active-provider"|"passive-provider"|"buffer"|"storage"|"none"|nil
---@field max_underground_distance uint8|nil
---@field flags EntityPrototypeFlags
---@field remains_when_mined array[LuaEntityPrototype]
---@field additional_pastable_entities array[LuaEntityPrototype]
---@field allow_copy_paste boolean
---@field shooting_cursor_size float
---@field created_smoke table|nil
---@field created_effect array[TriggerItem]|nil
---@field map_color Color|nil
---@field friendly_map_color Color
---@field enemy_map_color Color
---@field build_base_evolution_requirement double
---@field instruments array[ProgrammableSpeakerInstrument]|nil
---@field max_polyphony uint|nil
---@field module_inventory_size uint|nil
---@field ingredient_count uint|nil
---@field crafting_speed double|nil
---@field crafting_categories dictionary[string → boolean]|nil
---@field resource_categories dictionary[string → boolean]|nil
---@field supply_area_distance double|nil
---@field max_wire_distance double
---@field max_circuit_wire_distance double
---@field energy_usage double|nil
---@field max_energy_usage double
---@field max_energy_production double
---@field effectivity double|nil
---@field consumption double|nil
---@field friction_force double|nil
---@field braking_force double|nil
---@field air_resistance double|nil
---@field tank_driving boolean|nil
---@field rotation_speed double|nil
---@field turret_rotation_speed float|nil
---@field guns dictionary[string → LuaItemPrototype]|nil
---@field indexed_guns array[LuaItemPrototype]|nil
---@field speed double|nil
---@field speed_multiplier_when_out_of_energy float|nil
---@field max_payload_size uint|nil
---@field draw_cargo boolean|nil
---@field energy_per_move double|nil
---@field energy_per_tick double|nil
---@field max_energy double|nil
---@field min_to_charge float|nil
---@field max_to_charge float|nil
---@field burner_prototype LuaBurnerPrototype|nil
---@field electric_energy_source_prototype LuaElectricEnergySourcePrototype|nil
---@field heat_energy_source_prototype LuaHeatEnergySourcePrototype|nil
---@field fluid_energy_source_prototype LuaFluidEnergySourcePrototype|nil
---@field void_energy_source_prototype LuaVoidEnergySourcePrototype|nil
---@field heat_buffer_prototype LuaHeatBufferPrototype|nil
---@field building_grid_bit_shift uint
---@field fluid_usage_per_tick double|nil
---@field maximum_temperature double|nil
---@field burns_fluid boolean|nil
---@field scale_fluid_usage boolean|nil
---@field destroy_non_fuel_fluid boolean|nil
---@field max_power_output double|nil
---@field target_temperature double|nil
---@field boiler_mode "heat-water-inside"|"output-to-separate-pipe"|nil
---@field fluid LuaFluidPrototype|nil
---@field fluid_capacity double
---@field pumping_speed double|nil
---@field stack boolean|nil
---@field allow_custom_vectors boolean|nil
---@field allow_burner_leech boolean|nil
---@field inserter_extension_speed double|nil
---@field inserter_rotation_speed double|nil
---@field inserter_pickup_position Vector|nil
---@field inserter_drop_position Vector|nil
---@field inserter_chases_belt_items boolean|nil
---@field count_as_rock_for_filtered_deconstruction boolean|nil
---@field filter_count uint|nil
---@field time_to_live uint
---@field distribution_effectivity double|nil
---@field explosion_beam double|nil
---@field explosion_rotate double|nil
---@field tree_color_count uint8|nil
---@field alert_when_damaged boolean|nil
---@field alert_when_attacking boolean|nil
---@field color Color|nil
---@field collision_mask_collides_with_self boolean
---@field collision_mask_collides_with_tiles_only boolean
---@field collision_mask_considers_tile_transitions boolean
---@field allowed_effects dictionary[string → boolean]|nil
---@field rocket_parts_required uint|nil
---@field rocket_rising_delay uint8|nil
---@field launch_wait_time uint8|nil
---@field light_blinking_speed double|nil
---@field door_opening_speed double|nil
---@field rising_speed double|nil
---@field engine_starting_speed double|nil
---@field flying_speed double|nil
---@field flying_acceleration double|nil
---@field fixed_recipe string|nil
---@field construction_radius double|nil
---@field logistic_radius double|nil
---@field energy_per_hit_point double|nil
---@field create_ghost_on_death boolean
---@field ammo_category string|nil
---@field timeout uint|nil
---@field trigger_collision_mask CollisionMaskWithFlags|nil
---@field fluidbox_prototypes array[LuaFluidBoxPrototype]
---@field neighbour_bonus double|nil
---@field container_distance double|nil
---@field belt_distance double|nil
---@field belt_length double|nil
---@field is_building boolean
---@field automated_ammo_count uint|nil
---@field max_speed double|nil
---@field darkness_for_all_lamps_on float|nil
---@field darkness_for_all_lamps_off float|nil
---@field always_on boolean|nil
---@field min_darkness_to_spawn float|nil
---@field max_darkness_to_spawn float|nil
---@field call_for_help_radius double|nil
---@field max_count_of_owned_units double|nil
---@field max_friends_around_to_spawn double|nil
---@field spawning_radius double|nil
---@field spawning_spacing double|nil
---@field radius double
---@field cliff_explosive_prototype string|nil
---@field rocket_entity_prototype LuaEntityPrototype|nil
---@field has_belt_immunity boolean|nil
---@field vision_distance double|nil
---@field pollution_to_join_attack float|nil
---@field min_pursue_time uint|nil
---@field max_pursue_distance double|nil
---@field radar_range uint|nil
---@field move_while_shooting boolean|nil
---@field can_open_gates boolean|nil
---@field affected_by_tiles boolean|nil
---@field distraction_cooldown uint|nil
---@field spawning_time_modifier double|nil
---@field alert_icon_shift Vector
---@field alert_icon_scale float
---@field lab_inputs array[string]|nil
---@field researching_speed double|nil
---@field item_slot_count uint|nil
---@field base_productivity double|nil
---@field allow_access_to_all_forces boolean|nil
---@field supports_direction boolean
---@field terrain_friction_modifier float|nil
---@field allow_passengers boolean|nil
---@field max_distance_of_sector_revealed uint|nil
---@field max_distance_of_nearby_sector_revealed uint|nil
---@field adjacent_tile_collision_box BoundingBox|nil
---@field adjacent_tile_collision_mask CollisionMask|nil
---@field adjacent_tile_collision_test CollisionMask|nil
---@field center_collision_mask CollisionMask|nil
---@field grid_prototype LuaEquipmentGridPrototype|nil
---@field remove_decoratives string
---@field related_underground_belt LuaEntityPrototype|nil
---@field inserter_stack_size_bonus double|nil
---@field protected_from_tile_building boolean
---@field is_entity_with_owner boolean
---@field is_military_target boolean|nil
---@field allow_run_time_change_of_is_military_target boolean|nil
---@field logistic_parameters table|nil
---@field height double|nil
---@field torso_rotation_speed double|nil
---@field torso_bob_speed double|nil
---@field automatic_weapon_cycling boolean|nil
---@field chain_shooting_cooldown_modifier double|nil
---@field chunk_exploration_radius double|nil
---@field animation_speed_coefficient double|nil
---@field manual_range_modifier double|nil
---@field dying_speed float|nil
---@field active_energy_usage double|nil
---@field lamp_energy_usage double|nil
---@field use_exact_mode boolean|nil
---@field tile_width uint
---@field tile_height uint
---@field vertical_selection_shift double|nil
---@field spawn_decoration array[TriggerEffectItem]|nil
---@field spawn_decorations_on_expansion boolean|nil
---@field connection_distance double|nil
---@field joint_distance double|nil
---@field radius_visualisation_specification RadiusVisualisationSpecification|nil
---@field running_speed double|nil
---@field maximum_corner_sliding_distance double|nil
---@field build_distance uint|nil
---@field drop_item_distance uint|nil
---@field reach_distance uint|nil
---@field reach_resource_distance double|nil
---@field item_pickup_distance double|nil
---@field loot_pickup_distance double|nil
---@field enter_vehicle_distance double|nil
---@field ticks_to_keep_gun uint|nil
---@field ticks_to_keep_aiming_direction uint|nil
---@field ticks_to_stay_in_combat uint|nil
---@field respawn_time uint|nil
---@field damage_hit_tint Color|nil
---@field character_corpse LuaEntityPrototype|nil
---@field valid boolean
---@field object_name string
LuaEntityPrototype = {}
LuaEntityPrototype.__index = LuaEntityPrototype

function LuaEntityPrototype.has_flag() end
function LuaEntityPrototype.get_inventory_size() end
function LuaEntityPrototype.help() end

---@class LuaEquipment
---@field name string
---@field type string
---@field position EquipmentPosition
---@field shape table
---@field shield double
---@field max_shield double
---@field max_solar_power double
---@field movement_bonus double
---@field generator_power double
---@field energy double
---@field max_energy double
---@field prototype LuaEquipmentPrototype
---@field burner LuaBurner|nil
---@field valid boolean
---@field object_name string
LuaEquipment = {}
LuaEquipment.__index = LuaEquipment

function LuaEquipment.help() end

---@class LuaEquipmentCategoryPrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field valid boolean
---@field object_name string
LuaEquipmentCategoryPrototype = {}
LuaEquipmentCategoryPrototype.__index = LuaEquipmentCategoryPrototype

function LuaEquipmentCategoryPrototype.help() end

---@class LuaEquipmentGrid
---@field prototype LuaEquipmentGridPrototype
---@field width uint
---@field height uint
---@field equipment array[LuaEquipment]
---@field generator_energy double
---@field max_solar_energy double
---@field available_in_batteries double
---@field battery_capacity double
---@field shield float
---@field max_shield float
---@field inhibit_movement_bonus boolean
---@field unique_id uint
---@field valid boolean
---@field object_name string
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
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field equipment_categories array[string]
---@field width uint
---@field height uint
---@field locked boolean
---@field valid boolean
---@field object_name string
LuaEquipmentGridPrototype = {}
LuaEquipmentGridPrototype.__index = LuaEquipmentGridPrototype

function LuaEquipmentGridPrototype.help() end

---@class LuaEquipmentPrototype
---@field name string
---@field type string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field shape table
---@field take_result LuaItemPrototype|nil
---@field energy_production double
---@field shield float
---@field energy_per_shield double
---@field logistic_parameters table|nil
---@field energy_consumption double
---@field movement_bonus float|nil
---@field energy_source LuaElectricEnergySourcePrototype
---@field equipment_categories array[string]
---@field burner_prototype LuaBurnerPrototype|nil
---@field electric_energy_source_prototype LuaElectricEnergySourcePrototype|nil
---@field background_color Color
---@field attack_parameters AttackParameters|nil
---@field automatic boolean
---@field valid boolean
---@field object_name string
LuaEquipmentPrototype = {}
LuaEquipmentPrototype.__index = LuaEquipmentPrototype

function LuaEquipmentPrototype.help() end

---@class LuaFlowStatistics
---@field input_counts dictionary[string → uint64|double]
---@field output_counts dictionary[string → uint64|double]
---@field force LuaForce|nil
---@field valid boolean
---@field object_name string
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
---@field owner LuaEntity
---@field valid boolean
---@field object_name string
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
---@field entity LuaEntityPrototype
---@field index uint
---@field pipe_connections array[FluidBoxConnection]
---@field production_type "input"|"input-output"|"output"|"none"
---@field base_area double
---@field base_level float
---@field height double
---@field volume double
---@field filter LuaFluidPrototype|nil
---@field minimum_temperature double|nil
---@field maximum_temperature double|nil
---@field secondary_draw_orders array[int]
---@field render_layer string
---@field valid boolean
---@field object_name string
LuaFluidBoxPrototype = {}
LuaFluidBoxPrototype.__index = LuaFluidBoxPrototype

function LuaFluidBoxPrototype.help() end

---@class LuaFluidEnergySourcePrototype
---@field emissions double
---@field render_no_network_icon boolean
---@field render_no_power_icon boolean
---@field effectivity double
---@field burns_fluid boolean
---@field scale_fluid_usage boolean
---@field destroy_non_fuel_fluid boolean
---@field fluid_usage_per_tick double
---@field smoke array[SmokeSource]
---@field maximum_temperature double
---@field fluid_box LuaFluidBoxPrototype
---@field valid boolean
---@field object_name string
LuaFluidEnergySourcePrototype = {}
LuaFluidEnergySourcePrototype.__index = LuaFluidEnergySourcePrototype

function LuaFluidEnergySourcePrototype.help() end

---@class LuaFluidPrototype
---@field name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field default_temperature double
---@field max_temperature double
---@field heat_capacity double
---@field order string
---@field group LuaGroup
---@field subgroup LuaGroup
---@field base_color Color
---@field flow_color Color
---@field gas_temperature double
---@field emissions_multiplier double
---@field fuel_value double
---@field hidden boolean
---@field valid boolean
---@field object_name string
LuaFluidPrototype = {}
LuaFluidPrototype.__index = LuaFluidPrototype

function LuaFluidPrototype.help() end

---@class LuaFontPrototype
---@field name string
---@field from string
---@field size int
---@field spacing float
---@field border boolean
---@field filtered boolean
---@field border_color Color|nil
---@field valid boolean
---@field object_name string
LuaFontPrototype = {}
LuaFontPrototype.__index = LuaFontPrototype

function LuaFontPrototype.help() end

---@class LuaForce
---@field name string
---@field technologies LuaCustomTable[string → LuaTechnology]
---@field recipes LuaCustomTable[string → LuaRecipe]
---@field manual_mining_speed_modifier double
---@field manual_crafting_speed_modifier double
---@field laboratory_speed_modifier double
---@field laboratory_productivity_bonus double
---@field worker_robots_speed_modifier double
---@field worker_robots_battery_modifier double
---@field worker_robots_storage_bonus double
---@field current_research LuaTechnology|nil
---@field research_progress double
---@field previous_research LuaTechnology|nil
---@field inserter_stack_size_bonus double
---@field stack_inserter_capacity_bonus uint
---@field character_trash_slot_count double
---@field maximum_following_robot_count uint
---@field following_robots_lifetime_modifier double
---@field ghost_time_to_live uint
---@field players array[LuaPlayer]
---@field ai_controllable boolean
---@field logistic_networks dictionary[string → array[LuaLogisticNetwork]]
---@field item_production_statistics LuaFlowStatistics
---@field fluid_production_statistics LuaFlowStatistics
---@field kill_count_statistics LuaFlowStatistics
---@field entity_build_count_statistics LuaFlowStatistics
---@field character_running_speed_modifier double
---@field artillery_range_modifier double
---@field character_build_distance_bonus uint
---@field character_item_drop_distance_bonus uint
---@field character_reach_distance_bonus uint
---@field character_resource_reach_distance_bonus double
---@field character_item_pickup_distance_bonus double
---@field character_loot_pickup_distance_bonus double
---@field character_inventory_slots_bonus uint
---@field deconstruction_time_to_live uint
---@field character_health_bonus double
---@field max_successful_attempts_per_tick_per_construction_queue uint
---@field max_failed_attempts_per_tick_per_construction_queue uint
---@field zoom_to_world_enabled boolean
---@field zoom_to_world_ghost_building_enabled boolean
---@field zoom_to_world_blueprint_enabled boolean
---@field zoom_to_world_deconstruction_planner_enabled boolean
---@field zoom_to_world_selection_tool_enabled boolean
---@field character_logistic_requests boolean
---@field rockets_launched uint
---@field items_launched dictionary[string → uint]
---@field connected_players array[LuaPlayer]
---@field mining_drill_productivity_bonus double
---@field train_braking_force_bonus double
---@field evolution_factor double
---@field evolution_factor_by_pollution double
---@field evolution_factor_by_time double
---@field evolution_factor_by_killing_spawners double
---@field friendly_fire boolean
---@field share_chart boolean
---@field research_queue_enabled boolean
---@field index uint
---@field research_queue array[TechnologyIdentification]
---@field research_enabled boolean
---@field custom_color Color|nil
---@field color Color
---@field valid boolean
---@field object_name string
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
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field valid boolean
---@field object_name string
LuaFuelCategoryPrototype = {}
LuaFuelCategoryPrototype.__index = LuaFuelCategoryPrototype

function LuaFuelCategoryPrototype.help() end

---@class LuaGameScript
---@field object_name string
---@field player LuaPlayer|nil
---@field players LuaCustomTable[uint|string → LuaPlayer]
---@field map_settings MapSettings
---@field difficulty_settings DifficultySettings
---@field difficulty defines.difficulty
---@field forces LuaCustomTable[uint|string → LuaForce]
---@field entity_prototypes LuaCustomTable[string → LuaEntityPrototype]
---@field item_prototypes LuaCustomTable[string → LuaItemPrototype]
---@field fluid_prototypes LuaCustomTable[string → LuaFluidPrototype]
---@field tile_prototypes LuaCustomTable[string → LuaTilePrototype]
---@field equipment_prototypes LuaCustomTable[string → LuaEquipmentPrototype]
---@field damage_prototypes LuaCustomTable[string → LuaDamagePrototype]
---@field virtual_signal_prototypes LuaCustomTable[string → LuaVirtualSignalPrototype]
---@field equipment_grid_prototypes LuaCustomTable[string → LuaEquipmentGridPrototype]
---@field recipe_prototypes LuaCustomTable[string → LuaRecipePrototype]
---@field technology_prototypes LuaCustomTable[string → LuaTechnologyPrototype]
---@field decorative_prototypes LuaCustomTable[string → LuaDecorativePrototype]
---@field particle_prototypes LuaCustomTable[string → LuaParticlePrototype]
---@field autoplace_control_prototypes LuaCustomTable[string → LuaAutoplaceControlPrototype]
---@field noise_layer_prototypes LuaCustomTable[string → LuaNoiseLayerPrototype]
---@field mod_setting_prototypes LuaCustomTable[string → LuaModSettingPrototype]
---@field custom_input_prototypes LuaCustomTable[string → LuaCustomInputPrototype]
---@field ammo_category_prototypes LuaCustomTable[string → LuaAmmoCategoryPrototype]
---@field named_noise_expressions LuaCustomTable[string → LuaNamedNoiseExpression]
---@field item_subgroup_prototypes LuaCustomTable[string → LuaGroup]
---@field item_group_prototypes LuaCustomTable[string → LuaGroup]
---@field fuel_category_prototypes LuaCustomTable[string → LuaFuelCategoryPrototype]
---@field resource_category_prototypes LuaCustomTable[string → LuaResourceCategoryPrototype]
---@field achievement_prototypes LuaCustomTable[string → LuaAchievementPrototype]
---@field module_category_prototypes LuaCustomTable[string → LuaModuleCategoryPrototype]
---@field equipment_category_prototypes LuaCustomTable[string → LuaEquipmentCategoryPrototype]
---@field trivial_smoke_prototypes LuaCustomTable[string → LuaTrivialSmokePrototype]
---@field shortcut_prototypes LuaCustomTable[string → LuaShortcutPrototype]
---@field recipe_category_prototypes LuaCustomTable[string → LuaRecipeCategoryPrototype]
---@field font_prototypes LuaCustomTable[string → LuaFontPrototype]
---@field map_gen_presets LuaCustomTable[string → MapGenPreset]
---@field console_command_used boolean
---@field styles LuaCustomTable[string → string]
---@field tick uint
---@field ticks_played uint
---@field tick_paused boolean
---@field ticks_to_run uint
---@field finished boolean
---@field finished_but_continuing boolean
---@field speed float
---@field surfaces LuaCustomTable[uint|string → LuaSurface]
---@field active_mods dictionary[string → string]
---@field connected_players array[LuaPlayer]
---@field permissions LuaPermissionGroups
---@field backer_names LuaCustomTable[uint → string]
---@field default_map_gen_settings MapGenSettings
---@field enemy_has_vision_on_land_mines boolean
---@field autosave_enabled boolean
---@field draw_resource_selection boolean
---@field pollution_statistics LuaFlowStatistics
---@field max_force_distraction_distance double
---@field max_force_distraction_chunk_distance uint
---@field max_electric_pole_supply_area_distance float
---@field max_electric_pole_connection_distance double
---@field max_beacon_supply_area_distance double
---@field max_gate_activation_distance double
---@field max_inserter_reach_distance double
---@field max_pipe_to_ground_distance uint8
---@field max_underground_belt_distance uint8
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
---@field disabled boolean
---@field circuit_condition CircuitConditionDefinition
---@field logistic_condition CircuitConditionDefinition
---@field connect_to_logistic_network boolean
---@field valid boolean
---@field object_name string
LuaGenericOnOffControlBehavior = {}
LuaGenericOnOffControlBehavior.__index = LuaGenericOnOffControlBehavior

function LuaGenericOnOffControlBehavior.help() end

---@class LuaGroup
---@field name string
---@field localised_name LocalisedString
---@field type string
---@field group LuaGroup
---@field subgroups array[LuaGroup]
---@field order_in_recipe string
---@field order string
---@field valid boolean
---@field object_name string
LuaGroup = {}
LuaGroup.__index = LuaGroup

function LuaGroup.help() end

---@class LuaGui
---@field player LuaPlayer
---@field children dictionary[string → LuaGuiElement]
---@field top LuaGuiElement
---@field left LuaGuiElement
---@field center LuaGuiElement
---@field goal LuaGuiElement
---@field screen LuaGuiElement
---@field relative LuaGuiElement
---@field valid boolean
---@field object_name string
LuaGui = {}
LuaGui.__index = LuaGui

function LuaGui.is_valid_sprite_path() end
function LuaGui.help() end

---@class LuaGuiElement
---@field index uint
---@field gui LuaGui
---@field parent LuaGuiElement|nil
---@field name string
---@field caption LocalisedString
---@field value double
---@field direction GuiDirection
---@field style LuaStyle|string
---@field visible boolean
---@field text string
---@field children_names array[string]
---@field state boolean
---@field player_index uint
---@field sprite SpritePath
---@field resize_to_sprite boolean
---@field hovered_sprite SpritePath
---@field clicked_sprite SpritePath
---@field tooltip LocalisedString
---@field elem_tooltip ElemID|nil
---@field horizontal_scroll_policy ScrollPolicy
---@field vertical_scroll_policy ScrollPolicy
---@field type string
---@field children array[LuaGuiElement]
---@field items array[LocalisedString]
---@field selected_index uint
---@field number double
---@field show_percent_for_small_numbers boolean
---@field location GuiLocation|nil
---@field auto_center boolean
---@field badge_text LocalisedString
---@field auto_toggle boolean
---@field toggled boolean
---@field game_controller_interaction defines.game_controller_interaction
---@field position MapPosition
---@field surface_index uint
---@field zoom double
---@field minimap_player_index uint
---@field force string|nil
---@field elem_type ElemType
---@field elem_value string|SignalID|nil
---@field elem_filters PrototypeFilter|nil
---@field selectable boolean
---@field word_wrap boolean
---@field read_only boolean
---@field enabled boolean
---@field ignored_by_interaction boolean
---@field locked boolean
---@field draw_vertical_lines boolean
---@field draw_horizontal_lines boolean
---@field draw_horizontal_line_after_headers boolean
---@field column_count uint
---@field vertical_centering boolean
---@field slider_value double
---@field mouse_button_filter MouseButtonFlags
---@field numeric boolean
---@field allow_decimal boolean
---@field allow_negative boolean
---@field is_password boolean
---@field lose_focus_on_confirm boolean
---@field clear_and_focus_on_right_click boolean
---@field drag_target LuaGuiElement|nil
---@field selected_tab_index uint|nil
---@field tabs array[TabAndContent]
---@field entity LuaEntity|nil
---@field anchor GuiAnchor|nil
---@field tags Tags
---@field raise_hover_events boolean
---@field switch_state SwitchState
---@field allow_none_state boolean
---@field left_label_caption LocalisedString
---@field left_label_tooltip LocalisedString
---@field right_label_caption LocalisedString
---@field right_label_tooltip LocalisedString
---@field valid boolean
---@field object_name string
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
---@field max_temperature double
---@field default_temperature double
---@field specific_heat double
---@field max_transfer double
---@field min_temperature_gradient double
---@field min_working_temperature double
---@field minimum_glow_temperature double
---@field connections array[HeatConnection]
---@field valid boolean
---@field object_name string
LuaHeatBufferPrototype = {}
LuaHeatBufferPrototype.__index = LuaHeatBufferPrototype

function LuaHeatBufferPrototype.help() end

---@class LuaHeatEnergySourcePrototype
---@field emissions double
---@field render_no_network_icon boolean
---@field render_no_power_icon boolean
---@field max_temperature double
---@field default_temperature double
---@field specific_heat double
---@field max_transfer double
---@field min_temperature_gradient double
---@field min_working_temperature double
---@field minimum_glow_temperature double
---@field connections array[HeatConnection]
---@field heat_buffer_prototype LuaHeatBufferPrototype
---@field valid boolean
---@field object_name string
LuaHeatEnergySourcePrototype = {}
LuaHeatEnergySourcePrototype.__index = LuaHeatEnergySourcePrototype

function LuaHeatEnergySourcePrototype.help() end

---@class LuaInserterControlBehavior
---@field circuit_read_hand_contents boolean
---@field circuit_mode_of_operation defines.control_behavior.inserter.circuit_mode_of_operation
---@field circuit_hand_read_mode defines.control_behavior.inserter.hand_read_mode
---@field circuit_set_stack_size boolean
---@field circuit_stack_control_signal SignalID
---@field valid boolean
---@field object_name string
LuaInserterControlBehavior = {}
LuaInserterControlBehavior.__index = LuaInserterControlBehavior

function LuaInserterControlBehavior.help() end

---@class LuaInventory
---@field index defines.inventory|nil
---@field entity_owner LuaEntity|nil
---@field player_owner LuaPlayer|nil
---@field equipment_owner LuaEquipment|nil
---@field mod_owner string|nil
---@field valid boolean
---@field object_name string
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
---@field type string
---@field name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field order string
---@field place_result LuaEntityPrototype|nil
---@field place_as_equipment_result LuaEquipmentPrototype|nil
---@field place_as_tile_result PlaceAsTileResult|nil
---@field stackable boolean
---@field default_request_amount uint
---@field stack_size uint
---@field wire_count uint
---@field fuel_category string|nil
---@field burnt_result LuaItemPrototype|nil
---@field fuel_value float
---@field fuel_acceleration_multiplier double
---@field fuel_top_speed_multiplier double
---@field fuel_emissions_multiplier double
---@field subgroup LuaGroup
---@field group LuaGroup
---@field flags ItemPrototypeFlags
---@field rocket_launch_products array[Product]
---@field can_be_mod_opened boolean
---@field magazine_size float|nil
---@field reload_time float|nil
---@field equipment_grid LuaEquipmentGridPrototype|nil
---@field resistances dictionary[string → Resistance]|nil
---@field inventory_size_bonus uint|nil
---@field capsule_action CapsuleAction|nil
---@field attack_parameters AttackParameters|nil
---@field inventory_size uint|nil
---@field item_filters dictionary[string → LuaItemPrototype]|nil
---@field item_group_filters dictionary[string → LuaGroup]|nil
---@field item_subgroup_filters dictionary[string → LuaGroup]|nil
---@field filter_mode "none"|"whitelist"|"blacklist"|nil
---@field insertion_priority_mode "default"|"never"|"always"|"when-manually-filtered"|nil
---@field localised_filter_message LocalisedString|nil
---@field extend_inventory_by_default boolean|nil
---@field default_label_color Color|nil
---@field draw_label_for_cursor_render boolean|nil
---@field speed float|nil
---@field module_effects ModuleEffects|nil
---@field category string|nil
---@field tier uint|nil
---@field limitations array[string]|nil
---@field limitation_message_key string|nil
---@field straight_rail LuaEntityPrototype|nil
---@field curved_rail LuaEntityPrototype|nil
---@field repair_result array[TriggerItem]|nil
---@field selection_border_color Color|nil
---@field alt_selection_border_color Color|nil
---@field reverse_selection_border_color Color|nil
---@field alt_reverse_selection_border_color Color|nil
---@field selection_mode_flags SelectionModeFlags|nil
---@field alt_selection_mode_flags SelectionModeFlags|nil
---@field reverse_selection_mode_flags SelectionModeFlags|nil
---@field alt_reverse_selection_mode_flags SelectionModeFlags|nil
---@field selection_cursor_box_type CursorBoxRenderType|nil
---@field alt_selection_cursor_box_type CursorBoxRenderType|nil
---@field reverse_selection_cursor_box_type CursorBoxRenderType|nil
---@field alt_reverse_selection_cursor_box_type CursorBoxRenderType|nil
---@field always_include_tiles boolean|nil
---@field entity_filter_mode PrototypeFilterMode|nil
---@field alt_entity_filter_mode PrototypeFilterMode|nil
---@field reverse_alt_entity_filter_mode PrototypeFilterMode|nil
---@field alt_reverse_alt_entity_filter_mode PrototypeFilterMode|nil
---@field tile_filter_mode PrototypeFilterMode|nil
---@field alt_tile_filter_mode PrototypeFilterMode|nil
---@field reverse_tile_filter_mode PrototypeFilterMode|nil
---@field alt_reverse_tile_filter_mode PrototypeFilterMode|nil
---@field entity_filters dictionary[string → LuaEntityPrototype]|nil
---@field alt_entity_filters dictionary[string → LuaEntityPrototype]|nil
---@field reverse_entity_filters dictionary[string → LuaEntityPrototype]|nil
---@field alt_reverse_entity_filters dictionary[string → LuaEntityPrototype]|nil
---@field entity_type_filters dictionary[string → boolean]|nil
---@field alt_entity_type_filters dictionary[string → boolean]|nil
---@field reverse_entity_type_filters dictionary[string → boolean]|nil
---@field alt_reverse_entity_type_filters dictionary[string → boolean]|nil
---@field tile_filters dictionary[string → LuaTilePrototype]|nil
---@field alt_tile_filters dictionary[string → LuaTilePrototype]|nil
---@field reverse_tile_filters dictionary[string → LuaTilePrototype]|nil
---@field alt_reverse_tile_filters dictionary[string → LuaTilePrototype]|nil
---@field entity_filter_slots uint|nil
---@field tile_filter_slots uint|nil
---@field durability_description_key string|nil
---@field durability double|nil
---@field infinite boolean|nil
---@field mapper_count uint|nil
---@field valid boolean
---@field object_name string
LuaItemPrototype = {}
LuaItemPrototype.__index = LuaItemPrototype

function LuaItemPrototype.has_flag() end
function LuaItemPrototype.get_ammo_type() end
function LuaItemPrototype.help() end

---@class LuaItemStack
---@field valid_for_read boolean
---@field prototype LuaItemPrototype
---@field name string
---@field type string
---@field count uint
---@field grid LuaEquipmentGrid|nil
---@field health float
---@field durability double|nil
---@field ammo uint
---@field blueprint_icons array[BlueprintSignalIcon]|nil
---@field blueprint_snap_to_grid TilePosition|nil
---@field blueprint_position_relative_to_grid TilePosition|nil
---@field blueprint_absolute_snapping boolean
---@field label string|nil
---@field label_color Color|nil
---@field allow_manual_label_change boolean
---@field cost_to_build dictionary[string → uint]
---@field extends_inventory boolean
---@field prioritize_insertion_mode "default"|"never"|"always"|"when-manually-filtered"
---@field default_icons array[BlueprintSignalIcon]
---@field tags Tags
---@field custom_description LocalisedString
---@field entity_filters array[string]
---@field tile_filters array[string]
---@field entity_filter_mode defines.deconstruction_item.entity_filter_mode
---@field tile_filter_mode defines.deconstruction_item.tile_filter_mode
---@field tile_selection_mode defines.deconstruction_item.tile_selection_mode
---@field trees_and_rocks_only boolean
---@field entity_filter_count uint
---@field tile_filter_count uint
---@field active_index uint|nil
---@field item_number uint|nil
---@field connected_entity LuaEntity|nil
---@field entity_label string|nil
---@field entity_color Color|nil
---@field is_blueprint boolean
---@field is_blueprint_book boolean
---@field is_module boolean
---@field is_tool boolean
---@field is_mining_tool boolean
---@field is_armor boolean
---@field is_repair_tool boolean
---@field is_item_with_label boolean
---@field is_item_with_inventory boolean
---@field is_item_with_entity_data boolean
---@field is_selection_tool boolean
---@field is_item_with_tags boolean
---@field is_deconstruction_item boolean
---@field is_upgrade_item boolean
---@field valid boolean
---@field object_name string
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
---@field use_colors boolean
---@field color Color|nil
---@field valid boolean
---@field object_name string
LuaLampControlBehavior = {}
LuaLampControlBehavior.__index = LuaLampControlBehavior

function LuaLampControlBehavior.help() end

---@class LuaLazyLoadedValue
---@field valid boolean
---@field object_name string
LuaLazyLoadedValue = {}
LuaLazyLoadedValue.__index = LuaLazyLoadedValue

function LuaLazyLoadedValue.get() end
function LuaLazyLoadedValue.help() end

---@class LuaLogisticCell
---@field logistic_radius float
---@field logistics_connection_distance float
---@field construction_radius float
---@field stationed_logistic_robot_count uint
---@field stationed_construction_robot_count uint
---@field mobile boolean
---@field transmitting boolean
---@field charge_approach_distance float
---@field charging_robot_count uint
---@field to_charge_robot_count uint
---@field owner LuaEntity
---@field logistic_network LuaLogisticNetwork|nil
---@field neighbours array[LuaLogisticCell]
---@field charging_robots array[LuaEntity]
---@field to_charge_robots array[LuaEntity]
---@field valid boolean
---@field object_name string
LuaLogisticCell = {}
LuaLogisticCell.__index = LuaLogisticCell

function LuaLogisticCell.is_in_logistic_range() end
function LuaLogisticCell.is_in_construction_range() end
function LuaLogisticCell.is_neighbour_with() end
function LuaLogisticCell.help() end

---@class LuaLogisticContainerControlBehavior
---@field circuit_mode_of_operation defines.control_behavior.logistic_container.circuit_mode_of_operation
---@field valid boolean
---@field object_name string
LuaLogisticContainerControlBehavior = {}
LuaLogisticContainerControlBehavior.__index =
    LuaLogisticContainerControlBehavior

function LuaLogisticContainerControlBehavior.help() end

---@class LuaLogisticNetwork
---@field force LuaForce
---@field available_logistic_robots uint
---@field all_logistic_robots uint
---@field available_construction_robots uint
---@field all_construction_robots uint
---@field robot_limit uint
---@field cells array[LuaLogisticCell]
---@field providers array[LuaEntity]
---@field empty_providers array[LuaEntity]
---@field requesters array[LuaEntity]
---@field storages array[LuaEntity]
---@field logistic_members array[LuaEntity]
---@field provider_points array[LuaLogisticPoint]
---@field passive_provider_points array[LuaLogisticPoint]
---@field active_provider_points array[LuaLogisticPoint]
---@field empty_provider_points array[LuaLogisticPoint]
---@field requester_points array[LuaLogisticPoint]
---@field storage_points array[LuaLogisticPoint]
---@field robots array[LuaEntity]
---@field construction_robots array[LuaEntity]
---@field logistic_robots array[LuaEntity]
---@field valid boolean
---@field object_name string
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
---@field owner LuaEntity
---@field logistic_network LuaLogisticNetwork
---@field logistic_member_index uint
---@field filters array[LogisticFilter]|nil
---@field mode defines.logistic_mode
---@field force LuaForce
---@field targeted_items_pickup dictionary[string → uint]
---@field targeted_items_deliver dictionary[string → uint]
---@field exact boolean
---@field valid boolean
---@field object_name string
LuaLogisticPoint = {}
LuaLogisticPoint.__index = LuaLogisticPoint

function LuaLogisticPoint.help() end

---@class LuaMiningDrillControlBehavior
---@field circuit_enable_disable boolean
---@field circuit_read_resources boolean
---@field resource_read_mode defines.control_behavior.mining_drill.resource_read_mode
---@field resource_read_targets array[LuaEntity]
---@field valid boolean
---@field object_name string
LuaMiningDrillControlBehavior = {}
LuaMiningDrillControlBehavior.__index = LuaMiningDrillControlBehavior

function LuaMiningDrillControlBehavior.help() end

---@class LuaModSettingPrototype
---@field type string
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field mod string
---@field setting_type string
---@field default_value boolean|double|int|string
---@field minimum_value double|int|nil
---@field maximum_value double|int|nil
---@field allowed_values array[string]|array[int]|array[double]|nil
---@field allow_blank boolean|nil
---@field auto_trim boolean|nil
---@field hidden boolean
---@field valid boolean
---@field object_name string
LuaModSettingPrototype = {}
LuaModSettingPrototype.__index = LuaModSettingPrototype

function LuaModSettingPrototype.help() end

---@class LuaModuleCategoryPrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field valid boolean
---@field object_name string
LuaModuleCategoryPrototype = {}
LuaModuleCategoryPrototype.__index = LuaModuleCategoryPrototype

function LuaModuleCategoryPrototype.help() end

---@class LuaNamedNoiseExpression
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field intended_property string
---@field expression NoiseExpression
---@field valid boolean
---@field object_name string
LuaNamedNoiseExpression = {}
LuaNamedNoiseExpression.__index = LuaNamedNoiseExpression

function LuaNamedNoiseExpression.help() end

---@class LuaNoiseLayerPrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field valid boolean
---@field object_name string
LuaNoiseLayerPrototype = {}
LuaNoiseLayerPrototype.__index = LuaNoiseLayerPrototype

function LuaNoiseLayerPrototype.help() end

---@class LuaParticlePrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field regular_trigger_effect TriggerEffectItem
---@field ended_in_water_trigger_effect TriggerEffectItem
---@field render_layer RenderLayer
---@field render_layer_when_on_ground RenderLayer
---@field life_time uint
---@field regular_trigger_effect_frequency uint
---@field movement_modifier_when_on_ground float
---@field movement_modifier float
---@field mining_particle_frame_speed float
---@field valid boolean
---@field object_name string
LuaParticlePrototype = {}
LuaParticlePrototype.__index = LuaParticlePrototype

function LuaParticlePrototype.help() end

---@class LuaPermissionGroup
---@field name string
---@field players array[LuaPlayer]
---@field group_id uint
---@field valid boolean
---@field object_name string
LuaPermissionGroup = {}
LuaPermissionGroup.__index = LuaPermissionGroup

function LuaPermissionGroup.add_player() end
function LuaPermissionGroup.remove_player() end
function LuaPermissionGroup.allows_action() end
function LuaPermissionGroup.set_allows_action() end
function LuaPermissionGroup.destroy() end
function LuaPermissionGroup.help() end

---@class LuaPermissionGroups
---@field groups array[LuaPermissionGroup]
---@field valid boolean
---@field object_name string
LuaPermissionGroups = {}
LuaPermissionGroups.__index = LuaPermissionGroups

function LuaPermissionGroups.create_group() end
function LuaPermissionGroups.get_group() end
function LuaPermissionGroups.help() end

---@class LuaPlayer
---@field character LuaEntity|nil
---@field cutscene_character LuaEntity|nil
---@field index uint
---@field gui LuaGui
---@field opened_self boolean
---@field controller_type defines.controllers
---@field stashed_controller_type defines.controllers|nil
---@field game_view_settings GameViewSettings
---@field minimap_enabled boolean
---@field color Color
---@field chat_color Color
---@field name string
---@field tag string
---@field connected boolean
---@field admin boolean
---@field entity_copy_source LuaEntity|nil
---@field afk_time uint
---@field online_time uint
---@field last_online uint
---@field permission_group LuaPermissionGroup|nil
---@field mod_settings LuaCustomTable[string → ModSetting]
---@field ticks_to_respawn uint|nil
---@field display_resolution DisplayResolution
---@field display_scale double
---@field blueprint_to_setup LuaItemStack
---@field render_mode defines.render_mode
---@field input_method defines.input_method
---@field spectator boolean
---@field show_on_map boolean
---@field remove_unfiltered_items boolean
---@field infinity_inventory_filters array[InfinityInventoryFilter]
---@field auto_sort_main_inventory boolean
---@field hand_location ItemStackLocation|nil
---@field cursor_stack_temporary boolean
---@field drag_target DragTarget|nil
---@field zoom double
---@field map_view_settings MapViewSettings
---@field valid boolean
---@field object_name string
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
---@field valid boolean
---@field object_name string
LuaProfiler = {}
LuaProfiler.__index = LuaProfiler

function LuaProfiler.reset() end
function LuaProfiler.stop() end
function LuaProfiler.restart() end
function LuaProfiler.add() end
function LuaProfiler.divide() end
function LuaProfiler.help() end

---@class LuaProgrammableSpeakerControlBehavior
---@field circuit_parameters ProgrammableSpeakerCircuitParameters
---@field circuit_condition CircuitConditionDefinition
---@field valid boolean
---@field object_name string
LuaProgrammableSpeakerControlBehavior = {}
LuaProgrammableSpeakerControlBehavior.__index =
    LuaProgrammableSpeakerControlBehavior

function LuaProgrammableSpeakerControlBehavior.help() end

---@class LuaRCON
---@field object_name string
LuaRCON = {}
LuaRCON.__index = LuaRCON

function LuaRCON.print() end

---@class LuaRailChainSignalControlBehavior
---@field red_signal SignalID
---@field orange_signal SignalID
---@field green_signal SignalID
---@field blue_signal SignalID
---@field valid boolean
---@field object_name string
LuaRailChainSignalControlBehavior = {}
LuaRailChainSignalControlBehavior.__index = LuaRailChainSignalControlBehavior

function LuaRailChainSignalControlBehavior.help() end

---@class LuaRailPath
---@field size uint
---@field current uint
---@field total_distance double
---@field travelled_distance double
---@field rails LuaCustomTable[uint → LuaEntity]
---@field is_front boolean
---@field valid boolean
---@field object_name string
LuaRailPath = {}
LuaRailPath.__index = LuaRailPath

function LuaRailPath.help() end

---@class LuaRailSignalControlBehavior
---@field red_signal SignalID
---@field orange_signal SignalID
---@field green_signal SignalID
---@field close_signal boolean
---@field read_signal boolean
---@field circuit_condition CircuitConditionDefinition
---@field valid boolean
---@field object_name string
LuaRailSignalControlBehavior = {}
LuaRailSignalControlBehavior.__index = LuaRailSignalControlBehavior

function LuaRailSignalControlBehavior.help() end

---@class LuaRandomGenerator
---@field valid boolean
---@field object_name string
LuaRandomGenerator = {}
LuaRandomGenerator.__index = LuaRandomGenerator

function LuaRandomGenerator.re_seed() end
function LuaRandomGenerator.help() end

---@class LuaRecipe
---@field name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field prototype LuaRecipePrototype
---@field enabled boolean
---@field category string
---@field ingredients array[Ingredient]
---@field products array[Product]
---@field hidden boolean
---@field hidden_from_flow_stats boolean
---@field energy double
---@field order string
---@field group LuaGroup
---@field subgroup LuaGroup
---@field force LuaForce
---@field valid boolean
---@field object_name string
LuaRecipe = {}
LuaRecipe.__index = LuaRecipe

function LuaRecipe.reload() end
function LuaRecipe.help() end

---@class LuaRecipeCategoryPrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field valid boolean
---@field object_name string
LuaRecipeCategoryPrototype = {}
LuaRecipeCategoryPrototype.__index = LuaRecipeCategoryPrototype

function LuaRecipeCategoryPrototype.help() end

---@class LuaRecipePrototype
---@field enabled boolean
---@field name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field category string
---@field ingredients array[Ingredient]
---@field products array[Product]
---@field main_product Product|nil
---@field hidden boolean
---@field hidden_from_flow_stats boolean
---@field hidden_from_player_crafting boolean
---@field always_show_made_in boolean
---@field energy double
---@field order string
---@field group LuaGroup
---@field subgroup LuaGroup
---@field request_paste_multiplier uint
---@field overload_multiplier uint
---@field allow_inserter_overload boolean
---@field allow_as_intermediate boolean
---@field allow_intermediates boolean
---@field show_amount_in_title boolean
---@field always_show_products boolean
---@field emissions_multiplier double
---@field allow_decomposition boolean
---@field unlock_results boolean
---@field valid boolean
---@field object_name string
LuaRecipePrototype = {}
LuaRecipePrototype.__index = LuaRecipePrototype

function LuaRecipePrototype.help() end

---@class LuaRemote
---@field object_name string
---@field interfaces dictionary[string → dictionary[string → true]]
LuaRemote = {}
LuaRemote.__index = LuaRemote

function LuaRemote.add_interface() end
function LuaRemote.remove_interface() end
function LuaRemote.call() end

---@class LuaRendering
---@field object_name string
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
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field valid boolean
---@field object_name string
LuaResourceCategoryPrototype = {}
LuaResourceCategoryPrototype.__index = LuaResourceCategoryPrototype

function LuaResourceCategoryPrototype.help() end

---@class LuaRoboportControlBehavior
---@field read_logistics boolean
---@field read_robot_stats boolean
---@field available_logistic_output_signal SignalID
---@field total_logistic_output_signal SignalID
---@field available_construction_output_signal SignalID
---@field total_construction_output_signal SignalID
---@field valid boolean
---@field object_name string
LuaRoboportControlBehavior = {}
LuaRoboportControlBehavior.__index = LuaRoboportControlBehavior

function LuaRoboportControlBehavior.help() end

---@class LuaSettings
---@field startup LuaCustomTable[string → ModSetting]
---@field global LuaCustomTable[string → ModSetting]
---@field player LuaCustomTable[string → ModSetting]
---@field object_name string
LuaSettings = {}
LuaSettings.__index = LuaSettings

function LuaSettings.get_player_settings() end

---@class LuaShortcutPrototype
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field action string
---@field item_to_spawn LuaItemPrototype|nil
---@field technology_to_unlock LuaTechnologyPrototype|nil
---@field toggleable boolean
---@field associated_control_input string|nil
---@field valid boolean
---@field object_name string
LuaShortcutPrototype = {}
LuaShortcutPrototype.__index = LuaShortcutPrototype

function LuaShortcutPrototype.help() end

---@class LuaStorageTankControlBehavior
---@field valid boolean
---@field object_name string
LuaStorageTankControlBehavior = {}
LuaStorageTankControlBehavior.__index = LuaStorageTankControlBehavior

function LuaStorageTankControlBehavior.help() end

---@class LuaStyle
---@field gui LuaGui
---@field name string
---@field minimal_width int
---@field maximal_width int
---@field minimal_height int
---@field maximal_height int
---@field natural_width int
---@field natural_height int
---@field top_padding int
---@field right_padding int
---@field bottom_padding int
---@field left_padding int
---@field top_margin int
---@field right_margin int
---@field bottom_margin int
---@field left_margin int
---@field horizontal_align "left"|"center"|"right"|nil
---@field vertical_align "top"|"center"|"bottom"|nil
---@field font_color Color
---@field font string
---@field top_cell_padding int
---@field right_cell_padding int
---@field bottom_cell_padding int
---@field left_cell_padding int
---@field horizontally_stretchable boolean|nil
---@field vertically_stretchable boolean|nil
---@field horizontally_squashable boolean|nil
---@field vertically_squashable boolean|nil
---@field rich_text_setting defines.rich_text_setting
---@field hovered_font_color Color
---@field clicked_font_color Color
---@field disabled_font_color Color
---@field pie_progress_color Color
---@field clicked_vertical_offset int
---@field selected_font_color Color
---@field selected_hovered_font_color Color
---@field selected_clicked_font_color Color
---@field strikethrough_color Color
---@field draw_grayscale_picture boolean
---@field horizontal_spacing int
---@field vertical_spacing int
---@field use_header_filler boolean
---@field bar_width uint
---@field color Color
---@field column_alignments LuaCustomTable[uint → Alignment]
---@field single_line boolean
---@field extra_top_padding_when_activated int
---@field extra_bottom_padding_when_activated int
---@field extra_left_padding_when_activated int
---@field extra_right_padding_when_activated int
---@field extra_top_margin_when_activated int
---@field extra_bottom_margin_when_activated int
---@field extra_left_margin_when_activated int
---@field extra_right_margin_when_activated int
---@field stretch_image_to_widget_size boolean
---@field badge_font string
---@field badge_horizontal_spacing int
---@field default_badge_font_color Color
---@field selected_badge_font_color Color
---@field disabled_badge_font_color Color
---@field width int
---@field height int
---@field size int|array[int]
---@field padding int|array[int]
---@field margin int|array[int]
---@field cell_padding int
---@field extra_padding_when_activated int|array[int]
---@field extra_margin_when_activated int|array[int]
---@field valid boolean
---@field object_name string
LuaStyle = {}
LuaStyle.__index = LuaStyle

function LuaStyle.help() end

---@class LuaSurface
---@field name string
---@field index uint
---@field map_gen_settings MapGenSettings
---@field generate_with_lab_tiles boolean
---@field always_day boolean
---@field daytime double
---@field darkness float
---@field wind_speed double
---@field wind_orientation RealOrientation
---@field wind_orientation_change double
---@field peaceful_mode boolean
---@field freeze_daytime boolean
---@field ticks_per_day uint
---@field dusk double
---@field dawn double
---@field evening double
---@field morning double
---@field solar_power_multiplier double
---@field min_brightness double
---@field brightness_visual_weights ColorModifier
---@field show_clouds boolean
---@field valid boolean
---@field object_name string
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
---@field force LuaForce
---@field name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field prototype LuaTechnologyPrototype
---@field enabled boolean
---@field visible_when_disabled boolean
---@field upgrade boolean
---@field researched boolean
---@field prerequisites dictionary[string → LuaTechnology]
---@field research_unit_ingredients array[Ingredient]
---@field effects array[TechnologyModifier]
---@field research_unit_count uint
---@field research_unit_energy double
---@field order string
---@field level uint
---@field research_unit_count_formula string|nil
---@field valid boolean
---@field object_name string
LuaTechnology = {}
LuaTechnology.__index = LuaTechnology

function LuaTechnology.reload() end
function LuaTechnology.help() end

---@class LuaTechnologyPrototype
---@field name string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field enabled boolean
---@field hidden boolean
---@field visible_when_disabled boolean
---@field ignore_tech_cost_multiplier boolean
---@field upgrade boolean
---@field prerequisites dictionary[string → LuaTechnologyPrototype]
---@field research_unit_ingredients array[Ingredient]
---@field effects array[TechnologyModifier]
---@field research_unit_count uint
---@field research_unit_energy double
---@field order string
---@field level uint
---@field max_level uint
---@field research_unit_count_formula string|nil
---@field valid boolean
---@field object_name string
LuaTechnologyPrototype = {}
LuaTechnologyPrototype.__index = LuaTechnologyPrototype

function LuaTechnologyPrototype.help() end

---@class LuaTile
---@field name string
---@field prototype LuaTilePrototype
---@field position TilePosition
---@field hidden_tile string|nil
---@field surface LuaSurface
---@field valid boolean
---@field object_name string
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
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field collision_mask CollisionMask
---@field collision_mask_with_flags CollisionMaskWithFlags
---@field layer uint
---@field autoplace_specification AutoplaceSpecification|nil
---@field walking_speed_modifier float
---@field vehicle_friction_modifier float
---@field map_color Color
---@field decorative_removal_probability float
---@field automatic_neighbors boolean
---@field allowed_neighbors dictionary[string → LuaTilePrototype]
---@field needs_correction boolean
---@field mineable_properties table
---@field next_direction LuaTilePrototype|nil
---@field items_to_place_this array[ItemStackDefinition]|nil
---@field can_be_part_of_blueprint boolean
---@field emissions_per_second double
---@field check_collision_with_entities boolean
---@field valid boolean
---@field object_name string
LuaTilePrototype = {}
LuaTilePrototype.__index = LuaTilePrototype

function LuaTilePrototype.help() end

---@class LuaTrain
---@field manual_mode boolean
---@field speed double
---@field max_forward_speed double
---@field max_backward_speed double
---@field weight double
---@field carriages array[LuaEntity]
---@field locomotives table
---@field cargo_wagons array[LuaEntity]
---@field fluid_wagons array[LuaEntity]
---@field schedule TrainSchedule|nil
---@field state defines.train_state
---@field front_rail LuaEntity|nil
---@field back_rail LuaEntity|nil
---@field rail_direction_from_front_rail defines.rail_direction
---@field rail_direction_from_back_rail defines.rail_direction
---@field front_stock LuaEntity|nil
---@field back_stock LuaEntity|nil
---@field station LuaEntity|nil
---@field has_path boolean
---@field path_end_rail LuaEntity|nil
---@field path_end_stop LuaEntity|nil
---@field id uint
---@field passengers array[LuaPlayer]
---@field riding_state RidingState
---@field killed_players dictionary[uint → uint]
---@field kill_count uint
---@field path LuaRailPath|nil
---@field signal LuaEntity|nil
---@field valid boolean
---@field object_name string
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
---@field send_to_train boolean
---@field read_from_train boolean
---@field read_stopped_train boolean
---@field set_trains_limit boolean
---@field read_trains_count boolean
---@field enable_disable boolean
---@field stopped_train_signal SignalID
---@field trains_count_signal SignalID
---@field trains_limit_signal SignalID
---@field valid boolean
---@field object_name string
LuaTrainStopControlBehavior = {}
LuaTrainStopControlBehavior.__index = LuaTrainStopControlBehavior

function LuaTrainStopControlBehavior.help() end

---@class LuaTransportBeltControlBehavior
---@field enable_disable boolean
---@field read_contents boolean
---@field read_contents_mode defines.control_behavior.transport_belt.content_read_mode
---@field valid boolean
---@field object_name string
LuaTransportBeltControlBehavior = {}
LuaTransportBeltControlBehavior.__index = LuaTransportBeltControlBehavior

function LuaTransportBeltControlBehavior.help() end

---@class LuaTransportLine
---@field owner LuaEntity
---@field output_lines array[LuaTransportLine]
---@field input_lines array[LuaTransportLine]
---@field valid boolean
---@field object_name string
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
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field color Color
---@field start_scale double
---@field end_scale double
---@field movement_slow_down_factor double
---@field duration uint
---@field spread_duration uint
---@field fade_away_duration uint
---@field fade_in_duration uint
---@field glow_fade_away_duration uint
---@field cyclic boolean
---@field affected_by_wind boolean
---@field show_when_smoke_off boolean
---@field glow_animation boolean
---@field render_layer RenderLayer
---@field valid boolean
---@field object_name string
LuaTrivialSmokePrototype = {}
LuaTrivialSmokePrototype.__index = LuaTrivialSmokePrototype

function LuaTrivialSmokePrototype.help() end

---@class LuaUnitGroup
---@field members array[LuaEntity]
---@field position MapPosition
---@field state defines.group_state
---@field force LuaForce
---@field surface LuaSurface
---@field group_number uint
---@field is_script_driven boolean
---@field command Command|nil
---@field distraction_command Command|nil
---@field valid boolean
---@field object_name string
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
---@field name string
---@field order string
---@field localised_name LocalisedString
---@field localised_description LocalisedString
---@field special boolean
---@field subgroup LuaGroup
---@field valid boolean
---@field object_name string
LuaVirtualSignalPrototype = {}
LuaVirtualSignalPrototype.__index = LuaVirtualSignalPrototype

function LuaVirtualSignalPrototype.help() end

---@class LuaVoidEnergySourcePrototype
---@field emissions double
---@field render_no_network_icon boolean
---@field render_no_power_icon boolean
---@field valid boolean
---@field object_name string
LuaVoidEnergySourcePrototype = {}
LuaVoidEnergySourcePrototype.__index = LuaVoidEnergySourcePrototype

function LuaVoidEnergySourcePrototype.help() end

---@class LuaWallControlBehavior
---@field circuit_condition CircuitConditionDefinition
---@field open_gate boolean
---@field read_sensor boolean
---@field output_signal SignalID
---@field valid boolean
---@field object_name string
LuaWallControlBehavior = {}
LuaWallControlBehavior.__index = LuaWallControlBehavior

function LuaWallControlBehavior.help() end

--- DEFINES 

local defines = setmetatable({}, {
    __index = {
        alert_type = setmetatable({}, {
            __index = {
                entity_destroyed = "entity_destroyed",
                entity_under_attack = "entity_under_attack",
                not_enough_construction_robots = "not_enough_construction_robots",
                no_material_for_construction = "no_material_for_construction",
                not_enough_repair_packs = "not_enough_repair_packs",
                turret_fire = "turret_fire",
                custom = "custom",
                no_storage = "no_storage",
                train_out_of_fuel = "train_out_of_fuel"
            }
        }),
        behavior_result = setmetatable({}, {
            __index = {
                in_progress = "in_progress",
                fail = "fail",
                success = "success",
                deleted = "deleted"
            }
        }),
        build_check_type = setmetatable({}, {
            __index = {
                script = "script",
                manual = "manual",
                manual_ghost = "manual_ghost",
                script_ghost = "script_ghost",
                blueprint_ghost = "blueprint_ghost",
                ghost_revive = "ghost_revive"
            }
        }),
        chain_signal_state = setmetatable({}, {
            __index = {
                none = "none",
                all_open = "all_open",
                partially_open = "partially_open",
                none_open = "none_open"
            }
        }),
        chunk_generated_status = setmetatable({}, {
            __index = {
                nothing = "nothing",
                custom_tiles = "custom_tiles",
                basic_tiles = "basic_tiles",
                corrected_tiles = "corrected_tiles",
                tiles = "tiles",
                entities = "entities"
            }
        }),
        circuit_condition_index = setmetatable({}, {
            __index = {
                inserter_circuit = "inserter_circuit",
                inserter_logistic = "inserter_logistic",
                lamp = "lamp",
                arithmetic_combinator = "arithmetic_combinator",
                decider_combinator = "decider_combinator",
                constant_combinator = "constant_combinator",
                offshore_pump = "offshore_pump",
                pump = "pump"
            }
        }),
        circuit_connector_id = setmetatable({}, {
            __index = {
                accumulator = "accumulator",
                constant_combinator = "constant_combinator",
                container = "container",
                linked_container = "linked_container",
                programmable_speaker = "programmable_speaker",
                rail_signal = "rail_signal",
                rail_chain_signal = "rail_chain_signal",
                roboport = "roboport",
                storage_tank = "storage_tank",
                wall = "wall",
                electric_pole = "electric_pole",
                inserter = "inserter",
                lamp = "lamp",
                combinator_input = "combinator_input",
                combinator_output = "combinator_output",
                offshore_pump = "offshore_pump",
                pump = "pump"
            }
        }),
        command = setmetatable({}, {
            __index = {
                attack = "attack",
                go_to_location = "go_to_location",
                compound = "compound",
                group = "group",
                attack_area = "attack_area",
                wander = "wander",
                flee = "flee",
                stop = "stop",
                build_base = "build_base"
            }
        }),
        compound_command = setmetatable({}, {
            __index = {
                logical_and = "logical_and",
                logical_or = "logical_or",
                return_last = "return_last"
            }
        }),
        control_behavior = setmetatable({}, {
            __index = {
                inserter = setmetatable({}, {
                    __index = {
                        circuit_mode_of_operation = setmetatable({}, {
                            __index = {
                                none = "none",
                                enable_disable = "enable_disable",
                                set_filters = "set_filters",
                                read_hand_contents = "read_hand_contents",
                                set_stack_size = "set_stack_size"
                            }
                        }),
                        hand_read_mode = setmetatable({}, {
                            __index = {hold = "hold", pulse = "pulse"}
                        })

                    }
                }),
                logistic_container = setmetatable({}, {
                    __index = {
                        circuit_mode_of_operation = setmetatable({}, {
                            __index = {
                                send_contents = "send_contents",
                                set_requests = "set_requests"
                            }
                        })

                    }
                }),
                lamp = setmetatable({}, {
                    __index = {
                        circuit_mode_of_operation = setmetatable({}, {
                            __index = {use_colors = "use_colors"}
                        })

                    }
                }),
                mining_drill = setmetatable({}, {
                    __index = {
                        resource_read_mode = setmetatable({}, {
                            __index = {
                                this_miner = "this_miner",
                                entire_patch = "entire_patch"
                            }
                        })

                    }
                }),
                transport_belt = setmetatable({}, {
                    __index = {
                        content_read_mode = setmetatable({}, {
                            __index = {pulse = "pulse", hold = "hold"}
                        })

                    }
                }),
                type = setmetatable({}, {
                    __index = {
                        container = "container",
                        generic_on_off = "generic_on_off",
                        inserter = "inserter",
                        lamp = "lamp",
                        logistic_container = "logistic_container",
                        roboport = "roboport",
                        storage_tank = "storage_tank",
                        train_stop = "train_stop",
                        decider_combinator = "decider_combinator",
                        arithmetic_combinator = "arithmetic_combinator",
                        constant_combinator = "constant_combinator",
                        transport_belt = "transport_belt",
                        accumulator = "accumulator",
                        rail_signal = "rail_signal",
                        rail_chain_signal = "rail_chain_signal",
                        wall = "wall",
                        mining_drill = "mining_drill",
                        programmable_speaker = "programmable_speaker"
                    }
                })

            }
        }),
        controllers = setmetatable({}, {
            __index = {
                ghost = "ghost",
                character = "character",
                god = "god",
                editor = "editor",
                cutscene = "cutscene",
                spectator = "spectator"
            }
        }),
        deconstruction_item = setmetatable({}, {
            __index = {
                entity_filter_mode = setmetatable({}, {
                    __index = {whitelist = "whitelist", blacklist = "blacklist"}
                }),
                tile_filter_mode = setmetatable({}, {
                    __index = {whitelist = "whitelist", blacklist = "blacklist"}
                }),
                tile_selection_mode = setmetatable({}, {
                    __index = {
                        normal = "normal",
                        always = "always",
                        never = "never",
                        only = "only"
                    }
                })

            }
        }),
        difficulty = setmetatable({}, {
            __index = {easy = "easy", normal = "normal", hard = "hard"}
        }),
        difficulty_settings = setmetatable({}, {
            __index = {
                recipe_difficulty = setmetatable({}, {
                    __index = {normal = "normal", expensive = "expensive"}
                }),
                technology_difficulty = setmetatable({}, {
                    __index = {normal = "normal", expensive = "expensive"}
                })

            }
        }),
        direction = setmetatable({}, {
            __index = {
                north = "north",
                northeast = "northeast",
                east = "east",
                southeast = "southeast",
                south = "south",
                southwest = "southwest",
                west = "west",
                northwest = "northwest"
            }
        }),
        disconnect_reason = setmetatable({}, {
            __index = {
                quit = "quit",
                dropped = "dropped",
                reconnect = "reconnect",
                wrong_input = "wrong_input",
                desync_limit_reached = "desync_limit_reached",
                cannot_keep_up = "cannot_keep_up",
                afk = "afk",
                kicked = "kicked",
                kicked_and_deleted = "kicked_and_deleted",
                banned = "banned",
                switching_servers = "switching_servers"
            }
        }),
        distraction = setmetatable({}, {
            __index = {
                none = "none",
                by_enemy = "by_enemy",
                by_anything = "by_anything",
                by_damage = "by_damage"
            }
        }),
        entity_status = setmetatable({}, {
            __index = {
                working = "working",
                normal = "normal",
                no_power = "no_power",
                low_power = "low_power",
                no_fuel = "no_fuel",
                disabled_by_control_behavior = "disabled_by_control_behavior",
                opened_by_circuit_network = "opened_by_circuit_network",
                closed_by_circuit_network = "closed_by_circuit_network",
                disabled_by_script = "disabled_by_script",
                marked_for_deconstruction = "marked_for_deconstruction",
                not_plugged_in_electric_network = "not_plugged_in_electric_network",
                networks_connected = "networks_connected",
                networks_disconnected = "networks_disconnected",
                charging = "charging",
                discharging = "discharging",
                fully_charged = "fully_charged",
                out_of_logistic_network = "out_of_logistic_network",
                no_recipe = "no_recipe",
                no_ingredients = "no_ingredients",
                no_input_fluid = "no_input_fluid",
                no_research_in_progress = "no_research_in_progress",
                no_minable_resources = "no_minable_resources",
                low_input_fluid = "low_input_fluid",
                fluid_ingredient_shortage = "fluid_ingredient_shortage",
                full_output = "full_output",
                full_burnt_result_output = "full_burnt_result_output",
                item_ingredient_shortage = "item_ingredient_shortage",
                missing_required_fluid = "missing_required_fluid",
                missing_science_packs = "missing_science_packs",
                waiting_for_source_items = "waiting_for_source_items",
                waiting_for_space_in_destination = "waiting_for_space_in_destination",
                preparing_rocket_for_launch = "preparing_rocket_for_launch",
                waiting_to_launch_rocket = "waiting_to_launch_rocket",
                launching_rocket = "launching_rocket",
                no_modules_to_transmit = "no_modules_to_transmit",
                recharging_after_power_outage = "recharging_after_power_outage",
                waiting_for_target_to_be_built = "waiting_for_target_to_be_built",
                waiting_for_train = "waiting_for_train",
                no_ammo = "no_ammo",
                low_temperature = "low_temperature",
                disabled = "disabled",
                turned_off_during_daytime = "turned_off_during_daytime",
                not_connected_to_rail = "not_connected_to_rail",
                cant_divide_segments = "cant_divide_segments"
            }
        }),
        events = setmetatable({}, {
            __index = {
                on_tick = "on_tick",
                on_gui_click = "on_gui_click",
                on_gui_confirmed = "on_gui_confirmed",
                on_gui_text_changed = "on_gui_text_changed",
                on_gui_checked_state_changed = "on_gui_checked_state_changed",
                on_entity_died = "on_entity_died",
                on_post_entity_died = "on_post_entity_died",
                on_entity_damaged = "on_entity_damaged",
                on_picked_up_item = "on_picked_up_item",
                on_built_entity = "on_built_entity",
                on_sector_scanned = "on_sector_scanned",
                on_player_mined_item = "on_player_mined_item",
                on_pre_build = "on_pre_build",
                on_rocket_launched = "on_rocket_launched",
                on_pre_player_mined_item = "on_pre_player_mined_item",
                on_chunk_generated = "on_chunk_generated",
                on_player_crafted_item = "on_player_crafted_item",
                on_robot_built_entity = "on_robot_built_entity",
                on_robot_pre_mined = "on_robot_pre_mined",
                on_robot_mined = "on_robot_mined",
                on_research_started = "on_research_started",
                on_research_finished = "on_research_finished",
                on_research_reversed = "on_research_reversed",
                on_research_cancelled = "on_research_cancelled",
                on_player_rotated_entity = "on_player_rotated_entity",
                on_marked_for_deconstruction = "on_marked_for_deconstruction",
                on_cancelled_deconstruction = "on_cancelled_deconstruction",
                on_trigger_created_entity = "on_trigger_created_entity",
                on_trigger_fired_artillery = "on_trigger_fired_artillery",
                on_train_changed_state = "on_train_changed_state",
                on_player_created = "on_player_created",
                on_resource_depleted = "on_resource_depleted",
                on_player_driving_changed_state = "on_player_driving_changed_state",
                on_force_created = "on_force_created",
                on_forces_merging = "on_forces_merging",
                on_player_cursor_stack_changed = "on_player_cursor_stack_changed",
                on_pre_entity_settings_pasted = "on_pre_entity_settings_pasted",
                on_entity_settings_pasted = "on_entity_settings_pasted",
                on_player_main_inventory_changed = "on_player_main_inventory_changed",
                on_player_armor_inventory_changed = "on_player_armor_inventory_changed",
                on_player_ammo_inventory_changed = "on_player_ammo_inventory_changed",
                on_player_gun_inventory_changed = "on_player_gun_inventory_changed",
                on_player_placed_equipment = "on_player_placed_equipment",
                on_player_removed_equipment = "on_player_removed_equipment",
                on_pre_player_died = "on_pre_player_died",
                on_player_died = "on_player_died",
                on_player_respawned = "on_player_respawned",
                on_player_joined_game = "on_player_joined_game",
                on_player_left_game = "on_player_left_game",
                on_player_built_tile = "on_player_built_tile",
                on_player_mined_tile = "on_player_mined_tile",
                on_robot_built_tile = "on_robot_built_tile",
                on_robot_mined_tile = "on_robot_mined_tile",
                on_player_selected_area = "on_player_selected_area",
                on_player_alt_selected_area = "on_player_alt_selected_area",
                on_player_changed_surface = "on_player_changed_surface",
                on_selected_entity_changed = "on_selected_entity_changed",
                on_market_item_purchased = "on_market_item_purchased",
                on_player_dropped_item = "on_player_dropped_item",
                on_biter_base_built = "on_biter_base_built",
                on_player_changed_force = "on_player_changed_force",
                on_entity_renamed = "on_entity_renamed",
                on_gui_selection_state_changed = "on_gui_selection_state_changed",
                on_runtime_mod_setting_changed = "on_runtime_mod_setting_changed",
                on_difficulty_settings_changed = "on_difficulty_settings_changed",
                on_surface_created = "on_surface_created",
                on_surface_deleted = "on_surface_deleted",
                on_pre_surface_deleted = "on_pre_surface_deleted",
                on_player_mined_entity = "on_player_mined_entity",
                on_robot_mined_entity = "on_robot_mined_entity",
                on_train_created = "on_train_created",
                on_gui_elem_changed = "on_gui_elem_changed",
                on_player_setup_blueprint = "on_player_setup_blueprint",
                on_player_deconstructed_area = "on_player_deconstructed_area",
                on_player_configured_blueprint = "on_player_configured_blueprint",
                on_console_chat = "on_console_chat",
                on_console_command = "on_console_command",
                on_player_removed = "on_player_removed",
                on_pre_player_removed = "on_pre_player_removed",
                on_player_used_capsule = "on_player_used_capsule",
                script_raised_built = "script_raised_built",
                script_raised_destroy = "script_raised_destroy",
                script_raised_revive = "script_raised_revive",
                script_raised_teleported = "script_raised_teleported",
                script_raised_set_tiles = "script_raised_set_tiles",
                on_player_promoted = "on_player_promoted",
                on_player_demoted = "on_player_demoted",
                on_combat_robot_expired = "on_combat_robot_expired",
                on_worker_robot_expired = "on_worker_robot_expired",
                on_player_changed_position = "on_player_changed_position",
                on_mod_item_opened = "on_mod_item_opened",
                on_gui_opened = "on_gui_opened",
                on_gui_closed = "on_gui_closed",
                on_gui_value_changed = "on_gui_value_changed",
                on_player_muted = "on_player_muted",
                on_player_unmuted = "on_player_unmuted",
                on_player_cheat_mode_enabled = "on_player_cheat_mode_enabled",
                on_player_cheat_mode_disabled = "on_player_cheat_mode_disabled",
                on_character_corpse_expired = "on_character_corpse_expired",
                on_pre_ghost_deconstructed = "on_pre_ghost_deconstructed",
                on_pre_ghost_upgraded = "on_pre_ghost_upgraded",
                on_player_pipette = "on_player_pipette",
                on_player_display_resolution_changed = "on_player_display_resolution_changed",
                on_player_display_scale_changed = "on_player_display_scale_changed",
                on_pre_player_crafted_item = "on_pre_player_crafted_item",
                on_player_cancelled_crafting = "on_player_cancelled_crafting",
                on_chunk_charted = "on_chunk_charted",
                on_technology_effects_reset = "on_technology_effects_reset",
                on_force_reset = "on_force_reset",
                on_land_mine_armed = "on_land_mine_armed",
                on_forces_merged = "on_forces_merged",
                on_player_trash_inventory_changed = "on_player_trash_inventory_changed",
                on_pre_player_left_game = "on_pre_player_left_game",
                on_pre_surface_cleared = "on_pre_surface_cleared",
                on_surface_cleared = "on_surface_cleared",
                on_chunk_deleted = "on_chunk_deleted",
                on_pre_chunk_deleted = "on_pre_chunk_deleted",
                on_train_schedule_changed = "on_train_schedule_changed",
                on_player_banned = "on_player_banned",
                on_player_kicked = "on_player_kicked",
                on_player_unbanned = "on_player_unbanned",
                on_rocket_launch_ordered = "on_rocket_launch_ordered",
                on_script_path_request_finished = "on_script_path_request_finished",
                on_ai_command_completed = "on_ai_command_completed",
                on_marked_for_upgrade = "on_marked_for_upgrade",
                on_cancelled_upgrade = "on_cancelled_upgrade",
                on_player_toggled_map_editor = "on_player_toggled_map_editor",
                on_entity_cloned = "on_entity_cloned",
                on_area_cloned = "on_area_cloned",
                on_brush_cloned = "on_brush_cloned",
                on_game_created_from_scenario = "on_game_created_from_scenario",
                on_surface_imported = "on_surface_imported",
                on_surface_renamed = "on_surface_renamed",
                on_player_toggled_alt_mode = "on_player_toggled_alt_mode",
                on_player_repaired_entity = "on_player_repaired_entity",
                on_player_fast_transferred = "on_player_fast_transferred",
                on_pre_robot_exploded_cliff = "on_pre_robot_exploded_cliff",
                on_robot_exploded_cliff = "on_robot_exploded_cliff",
                on_entity_spawned = "on_entity_spawned",
                on_cutscene_waypoint_reached = "on_cutscene_waypoint_reached",
                on_unit_group_created = "on_unit_group_created",
                on_unit_added_to_group = "on_unit_added_to_group",
                on_unit_removed_from_group = "on_unit_removed_from_group",
                on_unit_group_finished_gathering = "on_unit_group_finished_gathering",
                on_build_base_arrived = "on_build_base_arrived",
                on_chart_tag_added = "on_chart_tag_added",
                on_chart_tag_modified = "on_chart_tag_modified",
                on_chart_tag_removed = "on_chart_tag_removed",
                on_lua_shortcut = "on_lua_shortcut",
                on_gui_location_changed = "on_gui_location_changed",
                on_gui_selected_tab_changed = "on_gui_selected_tab_changed",
                on_gui_switch_state_changed = "on_gui_switch_state_changed",
                on_force_cease_fire_changed = "on_force_cease_fire_changed",
                on_force_friends_changed = "on_force_friends_changed",
                on_string_translated = "on_string_translated",
                on_script_trigger_effect = "on_script_trigger_effect",
                on_player_set_quick_bar_slot = "on_player_set_quick_bar_slot",
                on_pre_player_toggled_map_editor = "on_pre_player_toggled_map_editor",
                on_pre_script_inventory_resized = "on_pre_script_inventory_resized",
                on_script_inventory_resized = "on_script_inventory_resized",
                on_entity_destroyed = "on_entity_destroyed",
                on_player_clicked_gps_tag = "on_player_clicked_gps_tag",
                on_player_flushed_fluid = "on_player_flushed_fluid",
                on_permission_group_edited = "on_permission_group_edited",
                on_pre_permission_string_imported = "on_pre_permission_string_imported",
                on_permission_string_imported = "on_permission_string_imported",
                on_pre_permission_group_deleted = "on_pre_permission_group_deleted",
                on_permission_group_deleted = "on_permission_group_deleted",
                on_permission_group_added = "on_permission_group_added",
                on_cutscene_cancelled = "on_cutscene_cancelled",
                on_player_configured_spider_remote = "on_player_configured_spider_remote",
                on_player_used_spider_remote = "on_player_used_spider_remote",
                on_spider_command_completed = "on_spider_command_completed",
                on_entity_logistic_slot_changed = "on_entity_logistic_slot_changed",
                on_equipment_inserted = "on_equipment_inserted",
                on_equipment_removed = "on_equipment_removed",
                on_player_reverse_selected_area = "on_player_reverse_selected_area",
                on_player_alt_reverse_selected_area = "on_player_alt_reverse_selected_area",
                on_gui_hover = "on_gui_hover",
                on_gui_leave = "on_gui_leave",
                on_entity_color_changed = "on_entity_color_changed",
                on_cutscene_started = "on_cutscene_started",
                on_cutscene_finished = "on_cutscene_finished",
                on_player_input_method_changed = "on_player_input_method_changed"
            }
        }),
        flow_precision_index = setmetatable({}, {
            __index = {
                five_seconds = "five_seconds",
                one_minute = "one_minute",
                ten_minutes = "ten_minutes",
                one_hour = "one_hour",
                ten_hours = "ten_hours",
                fifty_hours = "fifty_hours",
                two_hundred_fifty_hours = "two_hundred_fifty_hours",
                one_thousand_hours = "one_thousand_hours"
            }
        }),
        game_controller_interaction = setmetatable({}, {
            __index = {always = "always", never = "never", normal = "normal"}
        }),
        group_state = setmetatable({}, {
            __index = {
                gathering = "gathering",
                moving = "moving",
                attacking_distraction = "attacking_distraction",
                attacking_target = "attacking_target",
                finished = "finished",
                pathfinding = "pathfinding",
                wander_in_group = "wander_in_group"
            }
        }),
        gui_type = setmetatable({}, {
            __index = {
                none = "none",
                entity = "entity",
                research = "research",
                controller = "controller",
                production = "production",
                item = "item",
                bonus = "bonus",
                trains = "trains",
                achievement = "achievement",
                blueprint_library = "blueprint_library",
                equipment = "equipment",
                logistic = "logistic",
                other_player = "other_player",
                permissions = "permissions",
                tutorials = "tutorials",
                custom = "custom",
                server_management = "server_management",
                player_management = "player_management",
                tile = "tile",
                script_inventory = "script_inventory"
            }
        }),
        input_action = setmetatable({}, {
            __index = {
                activate_copy = "activate_copy",
                activate_cut = "activate_cut",
                activate_paste = "activate_paste",
                add_permission_group = "add_permission_group",
                add_train_station = "add_train_station",
                admin_action = "admin_action",
                alt_reverse_select_area = "alt_reverse_select_area",
                alt_select_area = "alt_select_area",
                alt_select_blueprint_entities = "alt_select_blueprint_entities",
                alternative_copy = "alternative_copy",
                begin_mining = "begin_mining",
                begin_mining_terrain = "begin_mining_terrain",
                build = "build",
                build_rail = "build_rail",
                build_terrain = "build_terrain",
                cancel_craft = "cancel_craft",
                cancel_deconstruct = "cancel_deconstruct",
                cancel_new_blueprint = "cancel_new_blueprint",
                cancel_research = "cancel_research",
                cancel_upgrade = "cancel_upgrade",
                change_active_character_tab = "change_active_character_tab",
                change_active_item_group_for_crafting = "change_active_item_group_for_crafting",
                change_active_item_group_for_filters = "change_active_item_group_for_filters",
                change_active_quick_bar = "change_active_quick_bar",
                change_arithmetic_combinator_parameters = "change_arithmetic_combinator_parameters",
                change_decider_combinator_parameters = "change_decider_combinator_parameters",
                change_entity_label = "change_entity_label",
                change_item_description = "change_item_description",
                change_item_label = "change_item_label",
                change_multiplayer_config = "change_multiplayer_config",
                change_picking_state = "change_picking_state",
                change_programmable_speaker_alert_parameters = "change_programmable_speaker_alert_parameters",
                change_programmable_speaker_circuit_parameters = "change_programmable_speaker_circuit_parameters",
                change_programmable_speaker_parameters = "change_programmable_speaker_parameters",
                change_riding_state = "change_riding_state",
                change_shooting_state = "change_shooting_state",
                change_train_stop_station = "change_train_stop_station",
                change_train_wait_condition = "change_train_wait_condition",
                change_train_wait_condition_data = "change_train_wait_condition_data",
                clear_cursor = "clear_cursor",
                connect_rolling_stock = "connect_rolling_stock",
                copy = "copy",
                copy_entity_settings = "copy_entity_settings",
                copy_opened_blueprint = "copy_opened_blueprint",
                copy_opened_item = "copy_opened_item",
                craft = "craft",
                cursor_split = "cursor_split",
                cursor_transfer = "cursor_transfer",
                custom_input = "custom_input",
                cycle_blueprint_book_backwards = "cycle_blueprint_book_backwards",
                cycle_blueprint_book_forwards = "cycle_blueprint_book_forwards",
                deconstruct = "deconstruct",
                delete_blueprint_library = "delete_blueprint_library",
                delete_blueprint_record = "delete_blueprint_record",
                delete_custom_tag = "delete_custom_tag",
                delete_permission_group = "delete_permission_group",
                destroy_item = "destroy_item",
                destroy_opened_item = "destroy_opened_item",
                disconnect_rolling_stock = "disconnect_rolling_stock",
                drag_train_schedule = "drag_train_schedule",
                drag_train_wait_condition = "drag_train_wait_condition",
                drop_blueprint_record = "drop_blueprint_record",
                drop_item = "drop_item",
                edit_blueprint_tool_preview = "edit_blueprint_tool_preview",
                edit_custom_tag = "edit_custom_tag",
                edit_permission_group = "edit_permission_group",
                export_blueprint = "export_blueprint",
                fast_entity_split = "fast_entity_split",
                fast_entity_transfer = "fast_entity_transfer",
                flush_opened_entity_fluid = "flush_opened_entity_fluid",
                flush_opened_entity_specific_fluid = "flush_opened_entity_specific_fluid",
                go_to_train_station = "go_to_train_station",
                grab_blueprint_record = "grab_blueprint_record",
                gui_checked_state_changed = "gui_checked_state_changed",
                gui_click = "gui_click",
                gui_confirmed = "gui_confirmed",
                gui_elem_changed = "gui_elem_changed",
                gui_hover = "gui_hover",
                gui_leave = "gui_leave",
                gui_location_changed = "gui_location_changed",
                gui_selected_tab_changed = "gui_selected_tab_changed",
                gui_selection_state_changed = "gui_selection_state_changed",
                gui_switch_state_changed = "gui_switch_state_changed",
                gui_text_changed = "gui_text_changed",
                gui_value_changed = "gui_value_changed",
                import_blueprint = "import_blueprint",
                import_blueprint_string = "import_blueprint_string",
                import_blueprints_filtered = "import_blueprints_filtered",
                import_permissions_string = "import_permissions_string",
                inventory_split = "inventory_split",
                inventory_transfer = "inventory_transfer",
                launch_rocket = "launch_rocket",
                lua_shortcut = "lua_shortcut",
                map_editor_action = "map_editor_action",
                market_offer = "market_offer",
                mod_settings_changed = "mod_settings_changed",
                open_achievements_gui = "open_achievements_gui",
                open_blueprint_library_gui = "open_blueprint_library_gui",
                open_blueprint_record = "open_blueprint_record",
                open_bonus_gui = "open_bonus_gui",
                open_character_gui = "open_character_gui",
                open_current_vehicle_gui = "open_current_vehicle_gui",
                open_equipment = "open_equipment",
                open_gui = "open_gui",
                open_item = "open_item",
                open_logistic_gui = "open_logistic_gui",
                open_mod_item = "open_mod_item",
                open_parent_of_opened_item = "open_parent_of_opened_item",
                open_production_gui = "open_production_gui",
                open_technology_gui = "open_technology_gui",
                open_tips_and_tricks_gui = "open_tips_and_tricks_gui",
                open_train_gui = "open_train_gui",
                open_train_station_gui = "open_train_station_gui",
                open_trains_gui = "open_trains_gui",
                paste_entity_settings = "paste_entity_settings",
                place_equipment = "place_equipment",
                quick_bar_pick_slot = "quick_bar_pick_slot",
                quick_bar_set_selected_page = "quick_bar_set_selected_page",
                quick_bar_set_slot = "quick_bar_set_slot",
                reassign_blueprint = "reassign_blueprint",
                remove_cables = "remove_cables",
                remove_train_station = "remove_train_station",
                reset_assembling_machine = "reset_assembling_machine",
                reset_item = "reset_item",
                reverse_select_area = "reverse_select_area",
                rotate_entity = "rotate_entity",
                select_area = "select_area",
                select_blueprint_entities = "select_blueprint_entities",
                select_entity_slot = "select_entity_slot",
                select_item = "select_item",
                select_mapper_slot = "select_mapper_slot",
                select_next_valid_gun = "select_next_valid_gun",
                select_tile_slot = "select_tile_slot",
                send_spidertron = "send_spidertron",
                set_auto_launch_rocket = "set_auto_launch_rocket",
                set_autosort_inventory = "set_autosort_inventory",
                set_behavior_mode = "set_behavior_mode",
                set_car_weapons_control = "set_car_weapons_control",
                set_circuit_condition = "set_circuit_condition",
                set_circuit_mode_of_operation = "set_circuit_mode_of_operation",
                set_controller_logistic_trash_filter_item = "set_controller_logistic_trash_filter_item",
                set_deconstruction_item_tile_selection_mode = "set_deconstruction_item_tile_selection_mode",
                set_deconstruction_item_trees_and_rocks_only = "set_deconstruction_item_trees_and_rocks_only",
                set_entity_color = "set_entity_color",
                set_entity_energy_property = "set_entity_energy_property",
                set_entity_logistic_trash_filter_item = "set_entity_logistic_trash_filter_item",
                set_filter = "set_filter",
                set_flat_controller_gui = "set_flat_controller_gui",
                set_heat_interface_mode = "set_heat_interface_mode",
                set_heat_interface_temperature = "set_heat_interface_temperature",
                set_infinity_container_filter_item = "set_infinity_container_filter_item",
                set_infinity_container_remove_unfiltered_items = "set_infinity_container_remove_unfiltered_items",
                set_infinity_pipe_filter = "set_infinity_pipe_filter",
                set_inserter_max_stack_size = "set_inserter_max_stack_size",
                set_inventory_bar = "set_inventory_bar",
                set_linked_container_link_i_d = "set_linked_container_link_i_d",
                set_logistic_filter_item = "set_logistic_filter_item",
                set_logistic_filter_signal = "set_logistic_filter_signal",
                set_player_color = "set_player_color",
                set_recipe_notifications = "set_recipe_notifications",
                set_request_from_buffers = "set_request_from_buffers",
                set_research_finished_stops_game = "set_research_finished_stops_game",
                set_signal = "set_signal",
                set_splitter_priority = "set_splitter_priority",
                set_train_stopped = "set_train_stopped",
                set_trains_limit = "set_trains_limit",
                set_vehicle_automatic_targeting_parameters = "set_vehicle_automatic_targeting_parameters",
                setup_assembling_machine = "setup_assembling_machine",
                setup_blueprint = "setup_blueprint",
                setup_single_blueprint_record = "setup_single_blueprint_record",
                smart_pipette = "smart_pipette",
                spawn_item = "spawn_item",
                stack_split = "stack_split",
                stack_transfer = "stack_transfer",
                start_repair = "start_repair",
                start_research = "start_research",
                start_walking = "start_walking",
                stop_building_by_moving = "stop_building_by_moving",
                switch_connect_to_logistic_network = "switch_connect_to_logistic_network",
                switch_constant_combinator_state = "switch_constant_combinator_state",
                switch_inserter_filter_mode_state = "switch_inserter_filter_mode_state",
                switch_power_switch_state = "switch_power_switch_state",
                switch_to_rename_stop_gui = "switch_to_rename_stop_gui",
                take_equipment = "take_equipment",
                toggle_deconstruction_item_entity_filter_mode = "toggle_deconstruction_item_entity_filter_mode",
                toggle_deconstruction_item_tile_filter_mode = "toggle_deconstruction_item_tile_filter_mode",
                toggle_driving = "toggle_driving",
                toggle_enable_vehicle_logistics_while_moving = "toggle_enable_vehicle_logistics_while_moving",
                toggle_entity_logistic_requests = "toggle_entity_logistic_requests",
                toggle_equipment_movement_bonus = "toggle_equipment_movement_bonus",
                toggle_map_editor = "toggle_map_editor",
                toggle_personal_logistic_requests = "toggle_personal_logistic_requests",
                toggle_personal_roboport = "toggle_personal_roboport",
                toggle_show_entity_info = "toggle_show_entity_info",
                translate_string = "translate_string",
                undo = "undo",
                upgrade = "upgrade",
                upgrade_opened_blueprint_by_item = "upgrade_opened_blueprint_by_item",
                upgrade_opened_blueprint_by_record = "upgrade_opened_blueprint_by_record",
                use_artillery_remote = "use_artillery_remote",
                use_item = "use_item",
                wire_dragging = "wire_dragging",
                write_to_console = "write_to_console"
            }
        }),
        input_method = setmetatable({}, {
            __index = {
                keyboard_and_mouse = "keyboard_and_mouse",
                game_controller = "game_controller"
            }
        }),
        inventory = setmetatable({}, {
            __index = {
                fuel = "fuel",
                burnt_result = "burnt_result",
                chest = "chest",
                furnace_source = "furnace_source",
                furnace_result = "furnace_result",
                furnace_modules = "furnace_modules",
                character_main = "character_main",
                character_guns = "character_guns",
                character_ammo = "character_ammo",
                character_armor = "character_armor",
                character_vehicle = "character_vehicle",
                character_trash = "character_trash",
                god_main = "god_main",
                editor_main = "editor_main",
                editor_guns = "editor_guns",
                editor_ammo = "editor_ammo",
                editor_armor = "editor_armor",
                roboport_robot = "roboport_robot",
                roboport_material = "roboport_material",
                robot_cargo = "robot_cargo",
                robot_repair = "robot_repair",
                assembling_machine_input = "assembling_machine_input",
                assembling_machine_output = "assembling_machine_output",
                assembling_machine_modules = "assembling_machine_modules",
                lab_input = "lab_input",
                lab_modules = "lab_modules",
                mining_drill_modules = "mining_drill_modules",
                item_main = "item_main",
                rocket_silo_rocket = "rocket_silo_rocket",
                rocket_silo_result = "rocket_silo_result",
                rocket_silo_input = "rocket_silo_input",
                rocket_silo_output = "rocket_silo_output",
                rocket_silo_modules = "rocket_silo_modules",
                rocket = "rocket",
                car_trunk = "car_trunk",
                car_ammo = "car_ammo",
                cargo_wagon = "cargo_wagon",
                turret_ammo = "turret_ammo",
                beacon_modules = "beacon_modules",
                character_corpse = "character_corpse",
                artillery_turret_ammo = "artillery_turret_ammo",
                artillery_wagon_ammo = "artillery_wagon_ammo",
                spider_trunk = "spider_trunk",
                spider_ammo = "spider_ammo",
                spider_trash = "spider_trash"
            }
        }),
        logistic_member_index = setmetatable({}, {
            __index = {
                logistic_container = "logistic_container",
                vehicle_storage = "vehicle_storage",
                character_requester = "character_requester",
                character_storage = "character_storage",
                character_provider = "character_provider",
                generic_on_off_behavior = "generic_on_off_behavior"
            }
        }),
        logistic_mode = setmetatable({}, {
            __index = {
                none = "none",
                active_provider = "active_provider",
                storage = "storage",
                requester = "requester",
                passive_provider = "passive_provider",
                buffer = "buffer"
            }
        }),
        mouse_button_type = setmetatable({}, {
            __index = {
                none = "none",
                left = "left",
                right = "right",
                middle = "middle"
            }
        }),
        print_skip = setmetatable({}, {
            __index = {
                never = "never",
                if_redundant = "if_redundant",
                if_visible = "if_visible"
            }
        }),
        print_sound = setmetatable({}, {
            __index = {
                always = "always",
                never = "never",
                use_player_settings = "use_player_settings"
            }
        }),
        rail_connection_direction = setmetatable({}, {
            __index = {
                left = "left",
                straight = "straight",
                right = "right",
                none = "none"
            }
        }),
        rail_direction = setmetatable({}, {
            __index = {front = "front", back = "back"}
        }),
        relative_gui_position = setmetatable({}, {
            __index = {
                top = "top",
                bottom = "bottom",
                left = "left",
                right = "right"
            }
        }),
        relative_gui_type = setmetatable({}, {
            __index = {
                accumulator_gui = "accumulator_gui",
                achievement_gui = "achievement_gui",
                additional_entity_info_gui = "additional_entity_info_gui",
                admin_gui = "admin_gui",
                arithmetic_combinator_gui = "arithmetic_combinator_gui",
                armor_gui = "armor_gui",
                assembling_machine_gui = "assembling_machine_gui",
                assembling_machine_select_recipe_gui = "assembling_machine_select_recipe_gui",
                beacon_gui = "beacon_gui",
                blueprint_book_gui = "blueprint_book_gui",
                blueprint_library_gui = "blueprint_library_gui",
                blueprint_setup_gui = "blueprint_setup_gui",
                bonus_gui = "bonus_gui",
                burner_equipment_gui = "burner_equipment_gui",
                car_gui = "car_gui",
                constant_combinator_gui = "constant_combinator_gui",
                container_gui = "container_gui",
                controller_gui = "controller_gui",
                decider_combinator_gui = "decider_combinator_gui",
                deconstruction_item_gui = "deconstruction_item_gui",
                electric_energy_interface_gui = "electric_energy_interface_gui",
                electric_network_gui = "electric_network_gui",
                entity_variations_gui = "entity_variations_gui",
                entity_with_energy_source_gui = "entity_with_energy_source_gui",
                equipment_grid_gui = "equipment_grid_gui",
                furnace_gui = "furnace_gui",
                generic_on_off_entity_gui = "generic_on_off_entity_gui",
                heat_interface_gui = "heat_interface_gui",
                infinity_pipe_gui = "infinity_pipe_gui",
                inserter_gui = "inserter_gui",
                item_with_inventory_gui = "item_with_inventory_gui",
                lab_gui = "lab_gui",
                lamp_gui = "lamp_gui",
                linked_container_gui = "linked_container_gui",
                loader_gui = "loader_gui",
                logistic_gui = "logistic_gui",
                market_gui = "market_gui",
                mining_drill_gui = "mining_drill_gui",
                other_player_gui = "other_player_gui",
                permissions_gui = "permissions_gui",
                pipe_gui = "pipe_gui",
                power_switch_gui = "power_switch_gui",
                production_gui = "production_gui",
                programmable_speaker_gui = "programmable_speaker_gui",
                rail_chain_signal_gui = "rail_chain_signal_gui",
                rail_signal_gui = "rail_signal_gui",
                reactor_gui = "reactor_gui",
                rename_stop_gui = "rename_stop_gui",
                resource_entity_gui = "resource_entity_gui",
                roboport_gui = "roboport_gui",
                rocket_silo_gui = "rocket_silo_gui",
                script_inventory_gui = "script_inventory_gui",
                server_config_gui = "server_config_gui",
                spider_vehicle_gui = "spider_vehicle_gui",
                splitter_gui = "splitter_gui",
                standalone_character_gui = "standalone_character_gui",
                storage_tank_gui = "storage_tank_gui",
                tile_variations_gui = "tile_variations_gui",
                train_gui = "train_gui",
                train_stop_gui = "train_stop_gui",
                trains_gui = "trains_gui",
                transport_belt_gui = "transport_belt_gui",
                upgrade_item_gui = "upgrade_item_gui",
                wall_gui = "wall_gui"
            }
        }),
        render_mode = setmetatable({}, {
            __index = {
                game = "game",
                chart = "chart",
                chart_zoomed_in = "chart_zoomed_in"
            }
        }),
        rich_text_setting = setmetatable({}, {
            __index = {
                enabled = "enabled",
                disabled = "disabled",
                highlight = "highlight"
            }
        }),
        riding = setmetatable({}, {
            __index = {
                acceleration = setmetatable({}, {
                    __index = {
                        nothing = "nothing",
                        accelerating = "accelerating",
                        braking = "braking",
                        reversing = "reversing"
                    }
                }),
                direction = setmetatable({}, {
                    __index = {
                        left = "left",
                        straight = "straight",
                        right = "right"
                    }
                })

            }
        }),
        rocket_silo_status = setmetatable({}, {
            __index = {
                building_rocket = "building_rocket",
                create_rocket = "create_rocket",
                lights_blinking_open = "lights_blinking_open",
                doors_opening = "doors_opening",
                doors_opened = "doors_opened",
                rocket_rising = "rocket_rising",
                arms_advance = "arms_advance",
                rocket_ready = "rocket_ready",
                launch_starting = "launch_starting",
                engine_starting = "engine_starting",
                arms_retract = "arms_retract",
                rocket_flying = "rocket_flying",
                lights_blinking_close = "lights_blinking_close",
                doors_closing = "doors_closing",
                launch_started = "launch_started"
            }
        }),
        shooting = setmetatable({}, {
            __index = {
                not_shooting = "not_shooting",
                shooting_enemies = "shooting_enemies",
                shooting_selected = "shooting_selected"
            }
        }),
        signal_state = setmetatable({}, {
            __index = {
                open = "open",
                closed = "closed",
                reserved = "reserved",
                reserved_by_circuit_network = "reserved_by_circuit_network"
            }
        }),
        train_state = setmetatable({}, {
            __index = {
                on_the_path = "on_the_path",
                path_lost = "path_lost",
                no_schedule = "no_schedule",
                no_path = "no_path",
                arrive_signal = "arrive_signal",
                wait_signal = "wait_signal",
                arrive_station = "arrive_station",
                wait_station = "wait_station",
                manual_control_stop = "manual_control_stop",
                manual_control = "manual_control",
                destination_full = "destination_full"
            }
        }),
        transport_line = setmetatable({}, {
            __index = {
                left_line = "left_line",
                right_line = "right_line",
                left_underground_line = "left_underground_line",
                right_underground_line = "right_underground_line",
                secondary_left_line = "secondary_left_line",
                secondary_right_line = "secondary_right_line",
                left_split_line = "left_split_line",
                right_split_line = "right_split_line",
                secondary_left_split_line = "secondary_left_split_line",
                secondary_right_split_line = "secondary_right_split_line"
            }
        }),
        wire_connection_id = setmetatable({}, {
            __index = {
                electric_pole = "electric_pole",
                power_switch_left = "power_switch_left",
                power_switch_right = "power_switch_right"
            }
        }),
        wire_type = setmetatable({}, {
            __index = {red = "red", green = "green", copper = "copper"}
        })

    }
})

---@type LuaBootstrap
script = LuaBootstrap {}

---@class defines.wire_type 

---@type defines.wire_type
local x = {}

local constants = setmetatable({}, {
    __index = {
        alert_type = setmetatable({}, {
            __index = {
                entity_destroyed = "entity_destroyed",
                entity_under_attack = "entity_under_attack",
                not_enough_construction_robots = "not_enough_construction_robots",
                no_material_for_construction = "no_material_for_construction",
                not_enough_repair_packs = "not_enough_repair_packs",
                turret_fire = "turret_fire",
                custom = "custom",
                no_storage = "no_storage",
                train_out_of_fuel = "train_out_of_fuel"
            }
        }),
        behavior_result = setmetatable({}, {
            __index = {
                in_progress = "in_progress",
                fail = "fail",
                success = "success",
                deleted = "deleted"
            }
        })
    }
})


