all:

install:
	mkdir -p $(DESTDIR)/usr/share/yavdr
	install udev_rule_for_displaylink $(DESTDIR)/lib/udev/rules.d/99-displaylink.rules
	install -d $(DESTDIR)/usr/share/yavdr/templates/etc/vdr/plugins/plugin.graphtft.conf
	install plugin.graphtft.conf_new_10main_template.template $(DESTDIR)/usr/share/yavdr/templates/etc/vdr/plugins/plugin.graphtft.conf/10main
	install -d $(DESTDIR)/usr/share/yavdr/templates/etc/init/graphtft-fe.conf
	install graphtft-fe.conf_new_init_template $(DESTDIR)/usr/share/yavdr/templates/etc/init/graphtft-fe.conf/30_displaylink.conf
	mkdir -p $(DESTDIR)/usr/share/yavdr
	for x in events; do cp -pr $$x $(DESTDIR)/usr/share/yavdr; done
clean:
