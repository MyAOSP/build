# Copyright (C) 2014-2015 OptiPop
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

# TARGET_USE_PIPE
ifeq ($(TARGET_USE_PIPE),true)
LOCAL_DISABLE_PIPE := \
	libc_dns \
	libc_tzcode \
	bluetooth.default

ifneq (1,$(words $(filter $(LOCAL_DISABLE_PIPE), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-pipe
else
LOCAL_CONLYFLAGS := \
	-pipe
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-pipe
else
LOCAL_CPPFLAGS := \
	-pipe
endif
endif
endif
#####

# STRICT_ALIASING
ifeq ($(STRICT_ALIASING),true)
LOCAL_DISABLE_STRICT := \
	libc_bionic \
	libc_dns \
	libc_tzcode \
	libziparchive \
	libtwrpmtp \
	libfusetwrp \
	libguitwrp \
	busybox \
	libuclibcrpc \
	libziparchive-host \
	libpdfiumcore \
	libandroid_runtime \
	libmedia \
	libpdfiumcore \
	libpdfium \
	bluetooth.default \
	logd \
	mdnsd \
	net_net_gyp \
	libstagefright_webm \
	libaudioflinger \
	libmediaplayerservice \
	libstagefright \
	ping \
	ping6 \
	libdiskconfig \
	libjavacore \
	libfdlibm \
	libvariablespeed \
	librtp_jni \
	libwilhelm \
	libdownmix \
	libldnhncr \
	libqcomvisualizer \
	libvisualizer \
	libstlport \
	libutils \
	libandroidfw \
	dnsmasq \
	static_busybox \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	content_content_renderer_gyp \
	third_party_WebKit_Source_modules_modules_gyp \
	third_party_WebKit_Source_platform_blink_platform_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gyp \
	third_party_angle_src_translator_lib_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	libc_gdtoa \
	libc_openbsd \
	libc \
	libc_nomalloc \
	patchoat \
	dex2oat \
	libart \
	libart-compiler \
	oatdump \
	libart-disassembler \
	linker \
	camera.msm8084 \
        libstlport_static \
        libcrypto_static \
        libfuse \
        libbusybox \
        libstagefright_webm \
        ssh \
        libssh \
        clatd \
        gatt_testtool \
        libOmxVenc \
        lsof \
        tcpdump \
        libc_malloc

LOCAL_FORCE_DISABLE_STRICT := \
	libziparchive-host \
	libziparchive \
	libdiskconfig \
	logd \
	libjavacore \
	camera.msm8084 \
        gatt_testtool \
        libstagefright_webm \
        clatd

ifeq (1,$(words $(filter $(LOCAL_FORCE_DISABLE_STRICT),$(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fno-strict-aliasing
endif
ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fno-strict-aliasing
endif
endif

ifneq (1,$(words $(filter $(LOCAL_DISABLE_STRICT),$(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif
ifndef LOCAL_CLANG
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=3
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=3
else
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=2
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=2
endif
endif
else

ifeq (1,$(words $(filter $(LOCAL_FORCE_DISABLE_STRICT),$(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fno-strict-aliasing
endif
ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fno-strict-aliasing
endif
endif
endif
#####

# KRAIT_TUNINGS
ifeq ($(KRAIT_TUNINGS),true)
ifndef LOCAL_IS_HOST_MODULE
LOCAL_DISABLE_KRAIT := \
	libc_dns \
	libc_tzcode \
	bluetooth.default \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support

ifneq (1,$(words $(filter $(LOCAL_DISABLE_KRAIT), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -mcpu=cortex-a15 \
	-mtune=cortex-a15
else
LOCAL_CONLYFLAGS := -mcpu=cortex-a15 \
	-mtune=cortex-a15
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += -mcpu=cortex-a15 \
	-mtune=cortex-a15
else
LOCAL_CPPFLAGS := -mcpu=cortex-a15 \
	-mtune=cortex-a15
endif
endif
endif
endif
#####

# ENABLE_GCCONLY
ifeq ($(ENABLE_GCCONLY),true)
ifndef LOCAL_IS_HOST_MODULE
ifeq ($(LOCAL_CLANG),)
LOCAL_DISABLE_GCCONLY := \
	bluetooth.default \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support

ifneq (1,$(words $(filter $(LOCAL_DISABLE_GCCONLY), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
else
LOCAL_CONLYFLAGS := -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
else
LOCAL_CPPFLAGS := -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
endif
endif
#####

# FLOOP_NEST_OPTIMIZE
ifeq ($(FLOOP_NEST_OPTIMIZE),true)
LOCAL_ENABLE_NEST := \
	art \
	libsigchain \
	libart \
	libart-compiler \
	libartd \
	libartd-compiler \
	libart-disassembler \
	libartd-disassembler \
	core.art-host \
	core.art \
	cpplint-art-phony \
	libnativebridgetest \
	libarttest \
	art-run-tests \
	libart-gtest \
	libc \
	libc_bionic \
	libc_gdtoa \
	libc_netbsd \
	libc_freebsd \
	libc_dns \
	libc_openbsd \
	libc_cxa \
	libc_syscalls \
	libc_aeabi \
	libc_common \
	libc_nomalloc \
	libc_malloc \
	libc_stack_protector \
	libc_tzcode \
	libstdc++ \
	linker \
	libdl \
	libm \
	tzdata \
	bionic-benchmarks

ifeq (1,$(words $(filter $(LOCAL_ENABLE_NEST), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-floop-nest-optimize
else
LOCAL_CONLYFLAGS := \
	-floop-nest-optimize
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-floop-nest-optimize
else
LOCAL_CPPFLAGS := \
	-floop-nest-optimize
endif
endif
endif
endif
endif
endif
#####

# GRAPHITE_OPTS
ifeq ($(GRAPHITE_OPTS),true)
ifndef LOCAL_IS_HOST_MODULE
ifeq ($(LOCAL_CLANG),)
LOCAL_DISABLE_GRAPHITE := \
	libunwind \
	libFFTEm \
	libicui18n \
	libskia \
	libvpx \
	libmedia_jni \
	libstagefright_mp3dec \
	libart \
	libstagefright_amrwbenc \
	libpdfium \
	libpdfiumcore \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	libjni_filtershow_filters \
	fio \
	libwebrtc_spl \
	libpcap \
	libFraunhoferAAC \
        libncurses \
        hwcomposer.msm8974 \
        libavformat \
        libavcodec

ifneq (1,$(words $(filter $(LOCAL_DISABLE_GRAPHITE), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
else
LOCAL_CONLYFLAGS := \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
else
LOCAL_CPPFLAGS := \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
endif
endif
endif
endif
endif
#####
####################
# FORCE FFAST-MATH #
####################
ifeq ($(FFAST_MATH),true)
LOCAL_FORCE_FFAST_MATH := \
	libskia \
	libGLESv2 \
	libEGL \
	libGLESv1_CM \
	libGLES_android \
	skia_skia_gyp \
	ui_gfx_gfx_gyp \
	ui_gfx_ipc_gfx_ipc_gyp \
	ui_gl_gl_gyp \
	libui \
	libgui \
	ui_base_ui_base_gyp \
	ui_gfx_gfx_geometry_gyp \
	third_party_WebKit_Source_core_webcore_rendering_gyp \
	third_party_WebKit_Source_core_webcore_svg_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	third_party_WebKit_Source_core_webcore_html_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gy \
	third_party_WebKit_Source_web_blink_web_gyp \
	gpu_gl_in_process_context \
	cc_cc_gyp

LOCAL_DISABLE_SINGLE_PRECISION :=

#########
# To Try#
#########

#        libstagefright_color_conversion \
#        libstagefright_aacenc \
#        libstagefright_matroska \
#        libstagefright_webm \
#        libstagefright_timedtext \
#        libvpx \
#        libwebm \
#        libstagefright_mpeg2ts \
#        libstagefright_id3 \
#        libFLAC \
#        libmedia_helper
#        skia_skia_gyp
#    	ui_gfx_gfx_gyp \
#		ui_gfx_gfx_geometry_gyp \
#       ui_gfx_ipc_gfx_ipc_gyp
#

ifneq ($(filter $(LOCAL_FORCE_FFAST_MATH), $(LOCAL_MODULE)),)
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -ffast-math -ftree-vectorize
else
LOCAL_CONLYFLAGS := -ffast-math -ftree-vectorize
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS +=  -ffast-math -ftree-vectorize
else
LOCAL_CPPFLAGS :=  -ffast-math -ftree-vectorize
endif

### Some modules doesn't like forcing single precision, until we fix casting errors, let's disable this optimization
ifeq ($(filter $(LOCAL_DISABLE_SINGLE_PRECISION), $(LOCAL_MODULE)),)
LOCAL_CONLYFLAGS += -fsingle-precision-constant
LOCAL_CPPFLAGS   += -fsingle-precision-constant
endif

endif
endif

# PThread
ifeq ($(ENABLE_PTHREAD),true)
LOCAL_DISABLE_PTHREAD := \
       bluetooth \
       bluetooth.default \
       libc_netbsd

ifneq (1,$(words $(filter $(LOCAL_DISABLE_PTHREAD),$(LOCAL_MODULE))))
  ifdef LOCAL_CFLAGS
    LOCAL_CFLAGS += -pthread
  else
    LOCAL_CFLAGS := -pthread
  endif
endif
endif
#####
