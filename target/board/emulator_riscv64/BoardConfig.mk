# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# riscv64 emulator specific definitions
TARGET_ARCH := riscv64
TARGET_ARCH_VARIANT := riscv64
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := riscv64

TARGET_2ND_ARCH_VARIANT := riscv64
TARGET_2ND_CPU_VARIANT := generic

include build/make/target/board/BoardConfigGsiCommon.mk
include build/make/target/board/BoardConfigEmuCommon.mk

TARGET_NO_KERNEL := false
BOARD_USES_RECOVERY_AS_BOOT := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800

# FIXME: RISC-V Add back when compile error is solved
# Wifi.
#BOARD_WLAN_DEVICE           := emulator
#BOARD_HOSTAPD_DRIVER        := NL80211
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_simulated
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_simulated
#WPA_SUPPLICANT_VERSION      := VER_0_8_X
#WIFI_DRIVER_FW_PATH_PARAM   := "/dev/null"
#WIFI_DRIVER_FW_PATH_STA     := "/dev/null"
#WIFI_DRIVER_FW_PATH_AP      := "/dev/null"
