# Copyright (C) 2018 The Android Open Source Project
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

include build/make/target/board/BoardConfigGsiCommon.mk
include build/make/target/board/BoardConfigGkiCommon.mk

BOARD_KERNEL-4.19-GZ_BOOTIMAGE_PARTITION_SIZE := 47185920
BOARD_KERNEL-4.19-GZ-ALLSYMS_BOOTIMAGE_PARTITION_SIZE := 47185920
BOARD_KERNEL-5.4_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_KERNEL-5.4-ALLSYMS_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_KERNEL-5.4-GZ_BOOTIMAGE_PARTITION_SIZE := 47185920
BOARD_KERNEL-5.4-GZ-ALLSYMS_BOOTIMAGE_PARTITION_SIZE := 47185920
BOARD_KERNEL-5.4-LZ4_BOOTIMAGE_PARTITION_SIZE := 53477376
BOARD_KERNEL-5.4-LZ4-ALLSYMS_BOOTIMAGE_PARTITION_SIZE := 53477376
BOARD_KERNEL-5.10_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_KERNEL-5.10-ALLSYMS_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_KERNEL-5.10-GZ_BOOTIMAGE_PARTITION_SIZE := 47185920
BOARD_KERNEL-5.10-GZ-ALLSYMS_BOOTIMAGE_PARTITION_SIZE := 47185920
BOARD_KERNEL-5.10-LZ4_BOOTIMAGE_PARTITION_SIZE := 53477376
BOARD_KERNEL-5.10-LZ4-ALLSYMS_BOOTIMAGE_PARTITION_SIZE := 53477376

BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800

BOARD_KERNEL_BINARIES := \
    kernel-4.19-gz \
    kernel-5.4 kernel-5.4-gz kernel-5.4-lz4 \
    kernel-5.10 kernel-5.10-gz kernel-5.10-lz4 \

ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
BOARD_KERNEL_BINARIES += \
    kernel-4.19-gz-allsyms \
    kernel-5.4-allsyms kernel-5.4-gz-allsyms kernel-5.4-lz4-allsyms \
    kernel-5.10-allsyms kernel-5.10-gz-allsyms kernel-5.10-lz4-allsyms \

endif

# Some vendors still haven't cleaned up all device specific directories under
# root!

# TODO(b/111434759, b/111287060) SoC specific hacks
BOARD_ROOT_EXTRA_SYMLINKS += /vendor/lib/dsp:/dsp
BOARD_ROOT_EXTRA_SYMLINKS += /mnt/vendor/persist:/persist
BOARD_ROOT_EXTRA_SYMLINKS += /vendor/firmware_mnt:/firmware

# TODO(b/36764215): remove this setting when the generic system image
# no longer has QCOM-specific directories under /.
BOARD_SEPOLICY_DIRS += build/make/target/board/generic_riscv64/sepolicy
