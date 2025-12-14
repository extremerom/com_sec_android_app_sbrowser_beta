.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NORMAL_BOOLEAN_PREFERENCES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NORMAL_STRING_PREFERENCES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSetNamespaceAware:Z


# direct methods
.method static constructor <clinit>()V
    .locals 75

    const-string v73, "pref_auto_close_unused_tabs_set_manually"

    const-string v74, "pref_smart_tab_delete_suggestion_first_time_use"

    const-string v0, "force_enable_zoom"

    const-string v1, "autofill_forms"

    const-string v2, "accept_cookies"

    const-string v3, "search_suggestions"

    const-string v4, "remember_passwords"

    const-string v5, "auto_signin"

    const-string v6, "fullscreen"

    const-string v7, "pref_hide_status_bar_no_cutout"

    const-string v8, "pref_hide_status_bar"

    const-string v9, "show_tab_bar"

    const-string v10, "show_tab_bar_enabled_by_user"

    const-string v11, "show_tab_bar_setting_restored"

    const-string v12, "show_tab_bar_setting_switch"

    const-string v13, "show_bookmark_bar_setting_for_normal"

    const-string v14, "show_bookmark_bar_setting_for_dex"

    const-string v15, "pref_browsing_assist"

    const-string v16, "pref_summarize"

    const-string v17, "pref_translator"

    const-string v18, "pref_read_articles_aloud"

    const-string v19, "pref_address_bar_bottom"

    const-string v20, "enable_content_blocker"

    const-string v21, "pref_new_video_assist"

    const-string v22, "force_set_as_true_force_zoom"

    const-string v23, "pref_high_contrast_mode"

    const-string v24, "safe_browsing"

    const-string v25, "download_show_rename_popup"

    const-string v26, "pref_go_to_top"

    const-string v27, "pref_go_to_bottom"

    const-string v28, "pref_pull_to_refresh"

    const-string v29, "pref_auto_play_video"

    const-string v30, "pref_close_all_tabs"

    const-string v31, "safe_browsing_opt"

    const-string v32, "pref_ambient_mode"

    const-string v33, "pref_night_mode"

    const-string v34, "pref_content_dark_mode"

    const-string v35, "pref_manage_dark_mode_system_default"

    const-string v36, "third_party_cookies"

    const-string v37, "block_unwanted_webpages"

    const-string v38, "first_time_use_listmode_of_tabmanager"

    const-string v39, "pref_support_reader_mode"

    const-string v40, "pref_support_reader_mode_before"

    const-string v41, "pref_block_deeplink"

    const-string v42, "block_auto_download"

    const-string v43, "pref_menu_customized"

    const-string v44, "pref_new_menu_customized"

    const-string v45, "pref_menu_ai_button_added"

    const-string v46, "close_option"

    const-string v47, "close_option_all_tabs"

    const-string v48, "close_option_browsing_history"

    const-string v49, "close_option_cache"

    const-string v50, "close_option_cookies_and_site_data"

    const-string v51, "close_option_visited"

    const-string v52, "homepage_force_changed_to_unified_page_set"

    const-string v53, "show_news_feed"

    const-string v54, "quick_access_privacy_board"

    const-string v55, "quick_access_from_other_devices"

    const-string v56, "pref_use_system_font"

    const-string v57, "pref_apply_default_dark_mode"

    const-string v58, "pref_privacy_reset_settings"

    const-string v59, "marketing_information"

    const-string v60, "pref_use_auto_https_upgrade"

    const-string v61, "most_visited_enabled"

    const-string v62, "match_dark_mode"

    const-string v63, "save_recent_searches"

    const-string v64, "bookmarks_wearable_sync_status"

    const-string v65, "pref_desktop_website_for_dex"

    const-string v66, "translator_on_device_mode"

    const-string v67, "pref_migrate_history_db_done"

    const-string v68, "allow_screenshots_in_secret_mode"

    const-string v69, "pref_fix_toolbar"

    const-string v70, "pref_trans_split_scroll_sync"

    const-string v71, "private_access_token"

    const-string v72, "pref_auto_close_unused_tabs_visited"

    filled-new-array/range {v0 .. v74}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->NORMAL_BOOLEAN_PREFERENCES:Ljava/util/List;

    const-string v30, "bookmark_widget_ids"

    const-string v31, "pref_auto_close_unused_tabs"

    const-string v1, "home_page"

    const-string v2, "home_page_type"

    const-string v3, "current_search_engine_name"

    const-string v4, "content_blocker_saved_package"

    const-string v5, "more_menu_item_list"

    const-string v6, "tools_primary_item_list"

    const-string v7, "tools_secondary_item_list"

    const-string v8, "new_toolbar_l_item"

    const-string v9, "new_toolbar_r_item"

    const-string v10, "new_hidden_menu_item_list"

    const-string v11, "toolbar_l_item"

    const-string v12, "toolbar_r_item"

    const-string v13, "hidden_menu_item_list"

    const-string v14, "port_toolbar_item_list"

    const-string v15, "port_more_menu_item_list"

    const-string v16, "port_hidden_menu_item_list"

    const-string v17, "land_toolbar_l_item"

    const-string v18, "land_toolbar_r_item"

    const-string v19, "land_more_menu_item_list"

    const-string v20, "land_hidden_menu_item_list"

    const-string v21, "pref_multi_tab_mode"

    const-string v22, "pref_system_font_dir"

    const-string v23, "pref_focus_layout_type"

    const-string v24, "pref_layout_one_bar_type"

    const-string v25, "pref_address_bar_layout"

    const-string v26, "PREF_COMMON_ZOOM_VALUE_DEX"

    const-string v27, "PREF_COMMON_ZOOM_VALUE_MOBILE"

    const-string v28, "pref_read_aloud_language"

    const-string v29, "backup_read_aloud_voices_key"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->NORMAL_STRING_PREFERENCES:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->sSetNamespaceAware:Z

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->NORMAL_BOOLEAN_PREFERENCES:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->NORMAL_STRING_PREFERENCES:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic c(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->setBookmarkWidgetPreferences(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static bridge synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->setVoiceVariants(Ljava/lang/String;)V

    return-void
.end method

.method public static getBooleanValueFromXml(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 8

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    const-string v0, "boolean"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v0

    move-object v4, v3

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    const-string v6, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    const-string v6, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    const-string p1, "si__BackupRestoreXmlUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p2
.end method

.method public static getStringValueFromXml(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    const-string v0, "string"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    const-string v5, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    const-string p1, "si__BackupRestoreXmlUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p2
.end method

.method public static restoreSettingsXml(Landroid/content/Context;Ljava/io/File;)V
    .locals 5

    const-string v0, "si__BackupRestoreXmlUtil"

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    sget-boolean v4, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->sSetNamespaceAware:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;

    invoke-direct {v4, v2, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string v1, "restoreFromSettingXml: error - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "restoreFromSettingXml: removed dummy xml file"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static setBookmarkWidgetPreferences(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBookmarkWidgetPreferences"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__BackupRestoreXmlUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "bookmark_widget_ids"

    invoke-interface {p1, v6, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v6, v2

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_2

    aget-object v7, v4, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    if-nez v6, :cond_0

    aget-object v8, v7, v2

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {p1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_0
    aget-object v8, v7, v2

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setNamespaceAwareForTesting()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->sSetNamespaceAware:Z

    return-void
.end method

.method private static setVoiceVariants(Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVoiceVariants(): languageKeys -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__BackupRestoreXmlUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadAloudVoiceName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
