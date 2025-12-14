.class public final synthetic Lcom/sec/android/app/sbrowser/homepage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;
.implements Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;
.implements Lvd/b;
.implements Lw2/m;
.implements Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/homepage/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/homepage/a;->a:I

    sparse-switch p0, :sswitch_data_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->a(Ljava/lang/String;)V

    return-void

    :sswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApi;->a(Ljava/lang/String;)V

    return-void

    :sswitch_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;->a(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/homepage/a;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->a()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->a()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;-><init>()V

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->a()Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->a()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->a()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->a()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->a()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;->a()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;->a()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;-><init>()V

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->a()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->b()Lcom/sec/android/app/sbrowser/tab/TabActivity;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->a()Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->a()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->a()Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->a()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;->a()Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;

    move-result-object p0

    return-object p0

    :pswitch_12
    new-instance p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;-><init>()V

    return-object p0

    :pswitch_13
    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->b()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->a()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getModeImpl()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->l()Z

    move-result p0

    return p0
.end method

.method public onBrowsingDataCleared()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->j()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/homepage/a;->a:I

    sparse-switch p0, :sswitch_data_0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->l(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->i(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :sswitch_1
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/AccessibilityPreferences;->i(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public onStoredDataCleared()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;->a()V

    return-void
.end method
