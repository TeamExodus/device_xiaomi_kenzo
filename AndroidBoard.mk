LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(ADD_RADIO_FILES), true)
radio_dir := $(LOCAL_PATH)/radio
RADIO_FILES := $(shell cd $(radio_dir) ; ls)
$(foreach f, $(RADIO_FILES), \
    $(call add-radio-file,radio/$(f)))
endif

#Radio file
$(call add-radio-file,firmware/adspso.bin)
#static_nvbk image
$(call add-radio-file,firmware/cmnlib.mbn)
$(call add-radio-file,firmware/config.bin)
#emmc_appsboot image
$(call add-radio-file,firmware/emmc_appsboot.mbn)

#rpm image
$(call add-radio-file,firmware/hyp.mbn)
#sbl1 image
$(call add-radio-file,firmware/keymaster.mbn)
#sdi image
$(call add-radio-file,firmware/NON-HLOS.bin)
#pmic image
$(call add-radio-file,firmware/rpm.mbn)
#tz version image
$(call add-radio-file,firmware/sbl1.mbn)
$(call add-radio-file,firmware/tz.mbn)
#$(call add-radio-file,firmware/prog_emmc_firehose_8976_ddr.mbn)
