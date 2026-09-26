# lift_slide_msgs

[English](./README.md) | 中文

---

升降滑台电机系统的自定义 ROS 2 消息和服务定义。

## 消息

### MotorStatus.msg

综合电机状态消息，包含：

- **运动反馈：** `position_m`、`velocity_mps`、`physical_position_m`
- **CiA402 驱动状态：** `statusword`、`cia402_state`、`mode_of_operation`、`is_enabled`、`is_fault`、`is_target_reached`、`is_homing`
- **数字输入：** `digital_inputs_raw`、`upper_limit_switch`、`home_switch`、`lower_limit_switch`、`limit_switch_valid`
- **回零状态：** `homing_complete`、`homing_state`
- **运行参数：** `profile_speed_mps`、`profile_accel_mps2`、`profile_decel_mps2`

## 服务

### ManualStep.srv

请求离散步进移动。

- **请求：** `direction`（int8：1=上，-1=下）、`step_m`（float64）、`speed_mps`（float64）
- **响应：** `success`（bool）、`message`（string）

### ManualJogStart.srv

启动连续点动。

- **请求：** `direction`（int8：1=上，-1=下）、`speed_mps`（float64）
- **响应：** `success`（bool）、`message`（string）

## 编译

```bash
colcon build --packages-select lift_slide_msgs
source install/setup.bash
```

注意：此包必须在依赖它的包（lift_slide_driver、lift_slide_panel）之前编译。

## 前置依赖

- ROS 2（Humble/Iron）
- rosidl_default_generators
- builtin_interfaces

## 许可证

本包通过 知识共享 署名-非商业性使用-相同方式共享 4.0 国际许可协议 (CC BY-NC-SA 4.0) 进行许可。

版权所有 (c) 2026 成都长数机器人有限公司 (Chengdu Changshu Robot Co., Ltd.)

详情请参阅 [LICENSE](LICENSE) 文件或访问：http://creativecommons.org/licenses/by-nc-sa/4.0/

## 致谢

本包是 OpenFlex 全身人形机器人平台生态系统的一部分，专为人形机器人领域的研究和工业应用而开发。

---

## 📞 联系我们

### 成都长数机器人有限公司
**Chengdu Changshu Robotics Co., Ltd.**

| 联系方式 | 信息 |
|---------|------|
| 📧 邮箱 | openarmrobot@gmail.com |
| 📱 电话/微信 | +86-17746530375 |
| 🌐 官网 | https://openarmx.com/ |
| 🌐 文档 | http://docs.openarmx.com/ |
| 📍 地址 | 天津市西青区・稻潮机器人体验基地（明日之城）・天津市人形机器人中心 |
| 👤 联系人 | 王先生 |
