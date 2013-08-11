CROSS_COMPILE=arm-linux-androideabi-
#
# Makefile for USB Host Controller Drivers
#
CONFIG_USB_DWCOTG := m


ccflags-$(CONFIG_USB_DEBUG) := -DDEBUG

obj-y        += dwc_otg/ dwc_common_port/

all:
	make ARCH=arm CROSS_COMPILE=arm-linux-androideabi- -C /home/fede/picuntu/myrepo/Linux3188/ M=$(shell pwd) modules

clean:
        make ARCH=arm CROSS_COMPILE=arm-linux-androideabi- -C /home/fede/picuntu/myrepo/Linux3188/ M=$(shell pwd) clean
