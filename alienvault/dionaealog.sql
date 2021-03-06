﻿DELETE FROM plugin WHERE id = "10000";
DELETE FROM plugin_sid where plugin_id = "10000";

# Register the plugin
INSERT IGNORE INTO plugin (id, type, name, description, vendor, product_type ) VALUES (10000, 1, 'dionaealogs', 'Dionaea Logs', 'TimB', 1 );

# And the individual SID values
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, name, priority, reliability) VALUES (10000, 1, 19, 225, NULL, 'Dionaea rejected connection', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, name, priority, reliability) VALUES (10000, 2, 19, 225, NULL, 'Dionaea accepted connection', 1, 1);

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, name, priority, reliability) VALUES (10000, 99, 19, 225, NULL, 'Dionaea attack collected', 3, 5);
# Download events


# Remember that once this is complete be sure to run alienvault-reconfig after importing these definitions!
