local Translations = {
    error = {
        ["blips_deactivated"] = "Blips đã được vô hiệu hóa",
        ["names_deactivated"] = "Tên đã được vô hiệu hóa",
        ["changed_perm_failed"] = "Hãy chọn chức vụ!",
        ["missing_reason"] = "Bạn phải đưa ra lý do!",
        ["invalid_reason_length_ban"] = "Bạn phải đưa ra Lý do và thời hạn cho lệnh cấm!",
        ["no_store_vehicle_garage"] = "Bạn không thể cất chiếc xe này trong Ga-ra của mình...",
        ["no_vehicle"] = "Bạn không ở trong một chiếc xe...",
        ["no_weapon"] = "Bạn không có vũ khí trong tay...",
        ["no_free_seats"] = "Xe không còn chỗ ngồi!",
        ["failed_vehicle_owner"] = "Chiếc xe này giờ đã là của bạn...",
        ["not_online"] = "Người chơi không hoạt động",
        ["no_receive_report"] = "Bạn không nhận được báo cáo",
        ["failed_set_speed"] = "Bạn đã không đặt tốc độ... (`fast` để chạy siêu nhanh, `normal` để chạy bình thường)",
        ["failed_set_model"] = "Bạn đã không thiết lập được Model...",
        ["failed_entity_copy"] = "Không có thông tin để sao chép!",
    },
    success = {
        ["blips_activated"] = "Blips đã bật",
        ["names_activated"] = "Tên đã bật",
        ["coords_copied"] = "Đã sao chép tọa độ!",
        ["heading_copied"] = "Đã sao chép tiêu đề!",
        ["changed_perm"] = "Nhóm quyền đã thay đổi",
        ["entered_vehicle"] = "Entered vehicle",
        ["success_vehicle_owner"] = "Phương tiện bây giờ là của bạn!",
        ["receive_reports"] = "Bạn đang nhận được báo cáo",
        ["entity_copy"] = "Đã sao chép thông tin!",
        ["sucess.entered_vehicle"] = "success Entered vehicle",
        ["spawn_weapon"] = "Bạn đã tạo ra Vũ khí",
        ["noclip_Bậtd"] = "No-clip đã bật",
        ["noclip_Tắtd"] = "No-clip đã tắt",
    },
    info = {
        ["ped_coords"] = "Tọa độ Ped:",
        ["vehicle_dev_data"] = "Dữ liệu phương tiện:",
        ["ent_id"] = "Entity ID:",
        ["net_id"] = "Net ID:",
        ["net_id_not_registered"] = "Chưa đăng ký",
        ["model"] = "Model",
        ["hash"] = "Hash",
        ["eng_health"] = "Động cơ:",
        ["body_health"] = "Thân vỏ:",
        ["goto"] = "Đi đến",
        ["remove"] = "Loại bỏ",
        ["confirm"] = "Xác nhận",
        ["reason_title"] = "Lý do",
        ["length"] = "Thời hạn",
        ["options"] = "Tùy chọn",
        ["position"] = "Vị trí",
        ["your_position"] = "đến vị trí của bạn",
        ["open"] = "Mở",
        ["inventories"] = "Túi đồ",
        ["reason"] = "Bạn cần phải đưa ra một lý do",
        ["give"] = "cho",
        ["id"] = "ID:",
        ["player_name"] = "Tên người chơi",
        ["obj"] = "Obj",
        ["ammoforthe"] = "+%{value} Đạn cho %{weapon}",
        ["kicked_server"] = "Bạn đã bị kick khỏi máy chủ",
        ["check_discord"] = "🔸 Kiểm tra Discord của chúng tôi để biết thêm thông tin: ",
        ["banned"] = "Bạn đã bị cấm:",
        ["ban_perm"] = "\n\nLệnh cấm của bạn là vĩnh viễn.\n🔸 Kiểm tra Discord của chúng tôi để biết thêm thông tin: ",
        ["ban_expires"] = "\n\nLệnh cấm hết hạn: ",
        ["rank_level"] = "Cấp độ của bạn là bây giờ ",
        ["admin_report"] = "Báo cáo quản trị - ",
        ["staffchat"] = "STAFFCHAT - ",
        ["warning_chat_message"] = "^8WARNING ^7 Bạn đã được cảnh báo bởi",
        ["warning_staff_message"] = "^8WARNING ^7 Bạn đã cảnh báo ",
        ["no_reason_specified"] = "Không có lý do cụ thể",
        ["server_restart"] = "Khởi động lại máy chủ, kiểm tra Discord của chúng tôi để biết thêm thông tin: ",
        ["entity_view_distance"] = "Khoảng cách xem Entity được đặt thành: %{distance} mét",
        ["entity_view_info"] = "Thông tin Entity",
        ["entity_view_title"] = "Entity Freeaim Mode",
        ["entity_freeaim_delete"] = "Xóa Entity",
        ["entity_freeaim_freeze"] = "Đóng băng Entity",
        ["entity_frozen"] = "Đã đóng băng Entity",
        ["entity_unfrozen"] = "Ngưng đóng băng Entity",
        ["model_hash"] = "Model hash:",
        ["obj_name"] = "Tên vật thể:",
        ["ent_owner"] = "Entity owner:",
        ["cur_health"] = "Sức khỏe hiện tại:",
        ["max_health"] = "Sức khỏe Max:",
        ["armour"] = "Áo giáp:",
        ["rel_group"] = "Relation Group:",
        ["rel_to_player"] = "Relation to Player:",
        ["rel_group_custom"] = "Custom Relationship",
        ["veh_acceleration"] = "Sự tăng tốc:",
        ["veh_cur_gear"] = "Số hiện tại:",
        ["veh_speed_kph"] = "Kph:",
        ["veh_speed_mph"] = "Mph:",
        ["veh_rpm"] = "Rpm:",
        ["dist_to_obj"] = "Dist:",
        ["obj_heading"] = "Heading:",
        ["obj_coords"] = "Tọa độ:",
        ["obj_rot"] = "Xoay:",
        ["obj_velocity"] = "Velocity:",
        ["obj_unknown"] = "Không rõ",
        ["you_have"] = "Bạn có",
        ["freeaim_entity"] = " the freeaim entity",
        ["entity_del"]  = "Entity đã bị xóa",
        ["entity_del_error"] = "Lỗi, không thể xóa Entity",
    },
    menu = {
        ["admin_menu"] = "Menu Admin",
        ["admin_options"] = "Lựa chọn Admin",
        ["online_players"] = "Người chơi Online",
        ["manage_server"] = "Quản lý máy chủ",
        ["weather_conditions"] = "Tùy chọn thời tiết",
        ["dealer_list"] = "Danh sách đại lý",
        ["ban"] = "Ban",
        ["kick"] = "Kick",
        ["permissions"] = "Quyền hạn",
        ["developer_options"] = "Tùy chọn DEV",
        ["vehicle_options"] = "Tùy chọn phương tiện",
        ["vehicle_categories"] = "Chủng loại phương tiện",
        ["vehicle_models"] = "Models phương tiện",
        ["player_management"] = "Quản lý người chơi",
        ["server_management"] = "Quản lý máy chủ",
        ["vehicles"] = "Phương tiện",
        ["noclip"] = "NoClip",
        ["revive"] = "Hồi sinh",
        ["invisible"] = "Tàng hình",
        ["god"] = "Chế độ GOD",
        ["names"] = "Tên",
        ["blips"] = "Blips",
        ["weather_options"] = "Tùy chọn thời tiết",
        ["server_time"] = "Thời gian máy chủ",
        ["time"] = "Thời gian",
        ["copy_vector3"] = "Copy vector3",
        ["copy_vector4"] = "Copy vector4",
        ["display_coords"] = "Hiển thị tọa độ",
        ["copy_heading"] = "Copy Heading",
        ["vehicle_dev_mode"] = "Chế độ phương tiện DEV",
        ["spawn_vehicle"] = "Spawn phương tiện",
        ["fix_vehicle"] = "Sửa phương tiện",
        ["buy"] = "Mua",
        ["remove_vehicle"] = "Xóa phương tiện",
        ["edit_dealer"] = "Sửa đại lý ",
        ["dealer_name"] = "Tên đại lý",
        ["category_name"] = "Tên danh mục",
        ["kill"] = "Giết",
        ["freeze"] = "Đóng băng",
        ["spectate"] = "Theo dõi",
        ["bring"] = "Kéo đến bạn",
        ["sit_in_vehicle"] = "Tele vào phương tiện",
        ["open_inv"] = "Mở túi đồ",
        ["give_clothing_menu"] = "Đưa tùy chỉnh nhân vật",
        ["hud_dev_mode"] = "Chế độ DEV (qb-hud)",
        ["entity_view_options"] = "Chế độ xem Entity",
        ["entity_view_distance"] = "Đặt khoảng cách xem",
        ["entity_view_freeaim"] = "Chế độ Freeaim",
        ["entity_view_peds"] = "Hiển thị Peds",
        ["entity_view_vehicles"] = "Hiển thị phương tiện",
        ["entity_view_objects"] = "Hiển thị vật thể",
        ["entity_view_freeaim_copy"] = "Sao chép thông tin Entity Freeaim",
        ["spawn_weapons"] = "Lấy vũ khí",
        ["max_mods"] = "Max car mods",
    },
    desc = {
        ["admin_options_desc"] = "Tùy chọn Admin",
        ["player_management_desc"] = "Quản lý người chơi",
        ["server_management_desc"] = "Quản lý máy chủ",
        ["vehicles_desc"] = "Tùy chọn phương tiện",
        ["dealer_desc"] = "Danh sách các đại lý hiện có",
        ["noclip_desc"] = "Bật/Tắt NoClip",
        ["revive_desc"] = "Hồi sinh bản thân",
        ["invisible_desc"] = "Bật/Tắt vô hình",
        ["god_desc"] = "Bật/Tắt God",
        ["names_desc"] = "Bật/Tắt Tên trên đầu",
        ["blips_desc"] = "Bật/Tắt Blips người chơi trên map",
        ["weather_desc"] = "Thay đổi thời tiết",
        ["developer_desc"] = "Tùy chọn DEV",
        ["vector3_desc"] = "Sao chép vector3",
        ["vector4_desc"] = "Sao chép vector4",
        ["display_coords_desc"] = "Hiển thị tọa độ",
        ["copy_heading_desc"] = "Sao chép heading",
        ["vehicle_dev_mode_desc"] = "Hiển thị thông tin phương tiện",
        ["delete_laser_desc"] = "Bật/Tắt Laser",
        ["spawn_vehicle_desc"] = "Lấy phương tiện",
        ["fix_vehicle_desc"] = "Sửa chữa phương tiện",
        ["buy_desc"] = "Mua xe miễn phí",
        ["remove_vehicle_desc"] = "Xóa phương tiện gần nhất",
        ["dealergoto_desc"] = "Đi đến đại lý",
        ["dealerremove_desc"] = "Xóa đại lý",
        ["kick_reason"] = "Kick với lý do",
        ["confirm_kick"] = "Đồng ý kick",
        ["ban_reason"] = "Ban với lý do",
        ["confirm_ban"] = "Xác nhận lệnh cấm",
        ["sit_in_veh_desc"] = "Ngồi vào",
        ["sit_in_veh_desc2"] = "'s vehicle",
        ["clothing_menu_desc"] = "Cung cấp Menu nhân vật",
        ["hud_dev_mode_desc"] = "Bật/Tắt chế độ DEV",
        ["entity_view_desc"] = "Xem thông tin về các Entity",
        ["entity_view_freeaim_desc"] = "Bật/Tắt Entity freeaim",
        ["entity_view_peds_desc"] = "Bật/Tắt thông tin Ped",
        ["entity_view_vehicles_desc"] = "Bật/Tắt thông tin phương tiện",
        ["entity_view_objects_desc"] = "Bật/Tắt thông tin Object",
        ["entity_view_freeaim_copy_desc"] = "Sao chép thông tin Entity Free Aim",
        ["spawn_weapons_desc"] = "Chọn vũ khí muốn lấy.",
        ["max_mod_desc"] = "Mod tối đa chiếc xe hiện tại của bạn",
    },
    time = {
        ["ban_length"] = "Thời hạn lệnh cấm",
        ["1hour"] = "1 giờ",
        ["6hour"] = "6 giờ",
        ["12hour"] = "12 giờ",
        ["1day"] = "1 ngày",
        ["3day"] = "3 ngày",
        ["1week"] = "1 tuần",
        ["1month"] = "1 tháng",
        ["3month"] = "3 tháng",
        ["6month"] = "6 tháng",
        ["1year"] = "1 năm",
        ["permenent"] = "Dài hạn",
        ["self"] = "Bản thân",
        ["changed"] = "Thời gian đã thay đổi thành %{time} giờ 00 phút",
    },
    weather = {
        ["extra_sunny"] = "Nắng cực",
        ["extra_sunny_desc"] = "Cực nắng",
        ["clear"] = "Trong lành",
        ["clear_desc"] = "Một ngày hoàn hảo!",
        ["neutral"] = "Ôn hòa",
        ["neutral_desc"] = "Chỉ là một ngày bình thường!",
        ["smog"] = "Khói bụi",
        ["smog_desc"] = "Khói từ các nhà máy!",
        ["foggy"] = "Sương mù",
        ["foggy_desc"] = "Khói x2!",
        ["overcast"] = "U ám",
        ["overcast_desc"] = "Không quá nắng!",
        ["clouds"] = "Nhiều mây",
        ["clouds_desc"] = "Mặt trời kìa ở đâu? ",
        ["clearing"] = "Trong sạch",
        ["clearing_desc"] = "Mây bắt đầu tan!",
        ["rain"] = "Cơn mưa",
        ["rain_desc"] = "Cơn mưa ngang qua!",
        ["thunder"] = "Sấm sét",
        ["thunder_desc"] = "Chạy ngay đi trước khi!",
        ["snow"] = "Tuyết",
        ["snow_desc"] = "Ở đây có lạnh không?",
        ["blizzard"] = "Bão tuyết",
        ["blizzed_desc"] = "Máy tạo tuyết!",
        ["light_snow"] = "Tuyết nhẹ",
        ["light_snow_desc"] = "Bắt đầu Cảm thấy Giống như Giáng sinh!",
        ["heavy_snow"] = "Tuyết rơi nhiều (XMAS)",
        ["heavy_snow_desc"] = "Đáp bóng tuyết nào!",
        ["halloween"] = "Halloween",
        ["halloween_desc"] = "Tiếng ồn đó là gì?!",
        ["weather_changed"] = "Thời tiết đã thay đổi thành: %{value}",
    },
    commands = {
        ["blips_for_player"] = "Hiển thị blips cho người chơi (Chỉ dành cho Admin)",
        ["player_name_overhead"] = "Hiển thị tên người chơi (Chỉ dành cho Admin)",
        ["coords_dev_command"] = "Bật coord hiển thị cho công cụ DEV (Chỉ dành cho Admin)",
        ["toogle_noclip"] = "Chuyển đổi noclip (Chỉ dành cho Admin)",
        ["save_vehicle_garage"] = "Lưu xe vào Ga-ra của bạn (Chỉ dành cho Admin)",
        ["make_announcement"] = "Đưa ra thông báo (Chỉ dành cho Admin)",
        ["open_admin"] = "Mở Menu Admin (Chỉ dành cho Admin)",
        ["staffchat_message"] = "Gửi tin nhắn cho tất cả nhân viên (Chỉ dành cho Admin)",
        ["nui_focus"] = "Cung cấp NUI cho người chơi (Chỉ dành cho Admin)",
        ["warn_a_player"] = "Cảnh báo người chơi (Chỉ dành cho Admin)",
        ["check_player_warning"] = "Kiểm tra cảnh báo của người chơi (Chỉ dành cho Admin)",
        ["delete_player_warning"] = "Xóa cảnh báo người chơi (Chỉ dành cho Admin)",
        ["reply_to_report"] = "Trả lời báo cáo (Chỉ dành cho Admin)",
        ["change_ped_model"] = "Thay đổi Model Ped (Chỉ dành cho Admin)",
        ["set_player_foot_speed"] = "Đặt tốc độ chân của người chơi (Chỉ dành cho Admin)",
        ["report_toggle"] = "Chuyển báo cáo đến (Chỉ dành cho Admin)",
        ["kick_all"] = "Kick tất cả người chơi",
        ["ammo_amount_set"] = "Đặt số lượng đạn của bạn (Chỉ dành cho Admin)",
    }
}

if GetConvar('qb_locale', 'en') == 'vi' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
