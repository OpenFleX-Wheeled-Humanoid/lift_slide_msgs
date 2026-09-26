# Consolidated motor status message for lift-slide driver
# Replaces multiple individual status topics with a single structured message

builtin_interfaces/Time stamp

# Motion feedback
float64 position_m            # User-frame position (meters, after homing offset)
float64 velocity_mps          # Velocity (meters/sec)
float64 physical_position_m   # Raw encoder position (meters, before offset)

# CiA402 drive state
uint16 statusword             # Raw CiA402 statusword (0x6041)
string cia402_state            # Human-readable state: "NOT_READY_TO_SWITCH_ON", "SWITCH_ON_DISABLED",
                               # "READY_TO_SWITCH_ON", "SWITCHED_ON", "OPERATION_ENABLED",
                               # "QUICK_STOP_ACTIVE", "FAULT_REACTION_ACTIVE", "FAULT", "UNKNOWN"
string mode_of_operation       # "no_mode", "position", "velocity", "homing"
bool is_enabled                # Drive in OPERATION_ENABLED state
bool is_fault                  # Drive in FAULT state
bool is_target_reached         # Statusword bit10
bool is_homing                 # Homing sequence in progress

# Digital inputs (0x60FD)
uint32 digital_inputs_raw
bool upper_limit_switch        # NOT switch active
bool home_switch               # HOME switch active
bool lower_limit_switch        # POT switch active
bool limit_switch_valid        # Whether DI feedback is available

# Homing state
bool homing_complete           # Homing has been completed successfully
string homing_state            # "IDLE", "IN_PROGRESS", "COMPLETED", "ERROR"

# Startup/recovery state
bool motion_ready
bool reference_valid
bool encoder_reference_lost

# Profile parameters (current settings)
float64 profile_speed_mps
float64 profile_accel_mps2
float64 profile_decel_mps2
