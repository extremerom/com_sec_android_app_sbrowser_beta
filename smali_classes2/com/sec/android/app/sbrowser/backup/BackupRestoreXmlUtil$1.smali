.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->restoreSettingsXml(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mStringValue:Ljava/lang/StringBuilder;

.field private mValue:Ljava/lang/String;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mStringValue:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mValue:Ljava/lang/String;

    return-void
.end method

.method private getHomepageType(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getCscHomepageURL()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "factoryreset_url"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "internet-native://newtab/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const-string p0, "other_page"

    goto :goto_0

    :cond_4
    const-string p0, "current_page"

    goto :goto_0

    :cond_5
    const-string p0, "quick_access"

    goto :goto_0

    :cond_6
    const-string p0, "default"

    :goto_0
    return-object p0
.end method

.method private putBooleanPreferences(Z)V
    .locals 8

    const-string v0, "pref_block_noisy_notifications"

    const-string v1, "web_notification_state"

    const-string v2, "pref_desktop_website"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v5, "search_widget_match_dark_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v5, "search_widget_is_new_widget_added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v5, "match_dark_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v5, "bookmark_widget_background_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v5, "is_new_widget_added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "restore_back_up_done"

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "download_delete_old_db"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_1
    const-string v7, "enable_javascript"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_4
    const-string v7, "bookmark_samsung_signin_popup"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_5
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_6
    const-string v7, "block_popups"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move v6, v3

    goto :goto_0

    :sswitch_7
    const-string v7, "web_push_notification_fragment"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {p1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_b
    :goto_1
    return-void

    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x642a6476 -> :sswitch_7
        -0x2936eac7 -> :sswitch_6
        -0x3af72a4 -> :sswitch_5
        0x15e8655d -> :sswitch_4
        0x26250708 -> :sswitch_3
        0x296833c9 -> :sswitch_2
        0x373b89a9 -> :sswitch_1
        0x4e089b33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private putFloatPreferences(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "pref_web_dark_mode_brightness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "pref_reader_mode_text_scale"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "pref_read_aloud_speech_rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "text_scale"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d39a448 -> :sswitch_3
        0x4563e244 -> :sswitch_2
        0x50ee71f4 -> :sswitch_1
        0x7902884b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putIntPreferences(I)V
    .locals 7

    const-string v0, "widget_settings"

    const-string v1, "color_mode"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v3, "search_widget_color_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "restore_back_up_done"

    const-string v5, "search_widget_transparency"

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v5, "widget_background_shape"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "anti_tracking_state"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "anti_tracking_level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "tab_delete_suggestion_closed_count"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "anti_tracking_secret_mode_level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "pref_auto_close_unused_tabs_closed_count"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "pref_reader_mode_theme"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "show_tab_bar_setting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "pref_desktop_website_for_multi_fold"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "pref_reader_mode_theme_dark"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "home_page_index"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move v5, v3

    goto :goto_0

    :sswitch_c
    const-string v0, "pref_background_play"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "home_page_type"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->getHomepageType(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_f
    :goto_1
    return-void

    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_11
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transparency widget id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " val: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__BackupRestoreXmlUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5eb1b277 -> :sswitch_c
        -0x575e897e -> :sswitch_b
        -0x11228198 -> :sswitch_a
        -0x4a69640 -> :sswitch_9
        0x18966b38 -> :sswitch_8
        0x1e8d6a0d -> :sswitch_7
        0x3d8a5e4f -> :sswitch_6
        0x4789fa4c -> :sswitch_5
        0x4835b22d -> :sswitch_4
        0x4cdbe8ff -> :sswitch_3
        0x5a753279 -> :sswitch_2
        0x5ade5b86 -> :sswitch_1
        0x7707dfbe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private putLongPreferences(J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "tab_delete_suggestion_last_shown_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_auto_close_unused_tabs_last_shown_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void
.end method

.method private putStringPreferences(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "backup_read_aloud_voices_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "pref_extension_url"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "bookmark_widget_ids"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->c(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54442f1a -> :sswitch_2
        -0x140dabad -> :sswitch_1
        0x4c7763f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mStringValue:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p3, "current_version"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " Old device version: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mStringValue:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "si__BackupRestoreXmlUtil"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "boolean"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mValue:Ljava/lang/String;

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->putBooleanPreferences(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "string"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mStringValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->putStringPreferences(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "float"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->putFloatPreferences(F)V

    goto :goto_0

    :cond_4
    const-string p1, "int"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->putIntPreferences(I)V

    goto :goto_0

    :cond_5
    const-string p1, "long"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->putLongPreferences(J)V

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mValue:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mStringValue:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    :goto_0
    if-ge p2, p1, :cond_2

    const-string p3, "name"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p3, "value"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil$1;->mValue:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
