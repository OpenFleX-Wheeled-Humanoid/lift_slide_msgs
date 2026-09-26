# lift_slide_msgs

English | [中文](./README-CN.md)

---

Custom ROS 2 message and service definitions for the lift-slide motor system.

## Messages

### MotorStatus.msg

Consolidated motor status message containing:

- **Motion feedback:** `position_m`, `velocity_mps`, `physical_position_m`
- **CiA402 drive state:** `statusword`, `cia402_state`, `mode_of_operation`, `is_enabled`, `is_fault`, `is_target_reached`, `is_homing`
- **Digital inputs:** `digital_inputs_raw`, `upper_limit_switch`, `home_switch`, `lower_limit_switch`, `limit_switch_valid`
- **Homing state:** `homing_complete`, `homing_state`
- **Profile parameters:** `profile_speed_mps`, `profile_accel_mps2`, `profile_decel_mps2`

## Services

### ManualStep.srv

Request a discrete step move.

- **Request:** `direction` (int8: 1=UP, -1=DOWN), `step_m` (float64), `speed_mps` (float64)
- **Response:** `success` (bool), `message` (string)

### ManualJogStart.srv

Start continuous jog movement.

- **Request:** `direction` (int8: 1=UP, -1=DOWN), `speed_mps` (float64)
- **Response:** `success` (bool), `message` (string)

## Build

```bash
colcon build --packages-select lift_slide_msgs
source install/setup.bash
```

Note: This package must be built before packages that depend on it (lift_slide_driver, lift_slide_panel).

## Prerequisites

- ROS 2 (Humble/Iron)
- rosidl_default_generators
- builtin_interfaces

## License

This package is licensed under Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0).

Copyright (c) 2026 Chengdu Changshu Robot Co., Ltd.

For details, please refer to the [LICENSE](LICENSE) file or visit: http://creativecommons.org/licenses/by-nc-sa/4.0/

## Acknowledgments

This package is part of the OpenFlex full-body humanoid robot platform ecosystem, developed specifically for research and industrial applications in the humanoid robotics field.

---

## 📞 Contact Us

### Chengdu Changshu Robot Co., Ltd.
**Chengdu Changshu Robotics Co., Ltd.**

| Contact | Information |
|---------|-------------|
| 📧 Email | openarmrobot@gmail.com |
| 📱 Phone/WeChat | +86-17746530375 |
| 🌐 Website | https://openarmx.com/ |
| 🌐 Docs | http://docs.openarmx.com/ |
| 📍 Address | Tianjin Xiqing District · Daochao Robot Experience Base (City of Tomorrow) · Tianjin Humanoid Robot Center |
| 👤 Contact Person | Mr. Wang |
