.class public Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mIsMoveToNotificationSetting:Z

.field private mReadAloudPreference:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

.field private final mRequestPermissionLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation
.end field

.field private mSuggestionDialog:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

.field private mSupportReaderMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    new-instance v0, Landroidx/fragment/app/a0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/fragment/app/a0;-><init>(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mRequestPermissionLauncher:Landroidx/activity/result/b;

    return-void
.end method

.method private bookmarkWidgetCallback()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6314"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->getPinAppWidgetPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0e005e

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->requestPinAppWidget(Ljava/lang/Class;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private getPinAppWidgetPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "home"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    const/high16 v1, 0xc000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$initReadAloud$3(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private initAddWidgetPreference()V
    .locals 2

    const-string v0, "pref_widget_header"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->shouldShowWidgetPromotion()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    const-string v1, "pref_add_search_widget"

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setAddWidgetPreference(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    const-string v1, "pref_add_bookmark_widget"

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setAddWidgetPreference(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;)V

    return-void
.end method

.method private initCloseAllTabs()V
    .locals 2

    const-string v0, "pref_close_all_tabs"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/PromptExitUtil;->getEnablePromptToExit()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isChm()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseAllTabsEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private initContentPush()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "push_settings_entry"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "from"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "push_id"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v1, "setting"

    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->setRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "marketing_information"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDividerVisible(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isContentsPushReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isEnableTopic()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDividerVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    :cond_3
    :goto_0
    return-void
.end method

.method private initReadAloud()V
    .locals 3

    const-string v0, "pref_read_aloud"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mReadAloudPreference:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->isReadAloudVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mReadAloudPreference:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    return-void
.end method

.method private initRegionSpecificFeatures()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isContentsPushSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/PromptExitUtil;->getEnablePromptToExit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isChm()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "region_specific_features"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private initSupportReaderMode()V
    .locals 1

    const-string v0, "pref_support_reader_mode"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mSupportReaderMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    return-void
.end method

.method public static isReadAloudVisible()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSupportAIByParentControl()Z

    move-result v0

    return v0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$setAddWidgetPreference$7(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$initContentPush$6(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Landroidx/fragment/app/J;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$initReadAloud$2(Landroidx/fragment/app/J;Z)V

    return-void
.end method

.method private synthetic lambda$initContentPush$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->onContentPushPreferenceChanged(ZZ)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initContentPush$6(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->onContentPushPreferenceChanged(ZZ)Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initReadAloud$2(Landroidx/fragment/app/J;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->startReadAloudFragment(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Z)V

    const-string p0, "6315"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$initReadAloud$3(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/X;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/X;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;Ljava/lang/Object;I)V

    const/4 p0, 0x1

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->startReadAloudFragment(Landroid/app/Activity;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Result"

    const-string v1, "ON"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "6315"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mIsMoveToNotificationSetting:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setContentPushEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->setNotificationPermissionRequested()V

    return-void
.end method

.method private synthetic lambda$onStartConsentActivityResult$4(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->startReadAloudFragment(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setAddWidgetPreference$7(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->openWidgetPromotion(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showContentPushSuggestionDialog$1()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setNeedAgreement(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setContentPushEnabled(Z)V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mIsMoveToNotificationSetting:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mRequestPermissionLauncher:Landroidx/activity/result/b;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->openNotificationSetting(Landroid/app/Activity;Landroidx/activity/result/b;)V

    return-void
.end method

.method private static synthetic lambda$updateAutoPlay$8(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutoplayEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$showContentPushSuggestionDialog$1()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$onStartConsentActivityResult$4(Z)V

    return-void
.end method

.method private needToContentPushSuggestDialog(Z)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->needTncAgreement()Z

    move-result p0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getNeedAgreement(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$initContentPush$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onContentPushPreferenceChanged(ZZ)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->needToContentPushSuggestDialog(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->showContentPushSuggestionDialog()V

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isEnableTopic()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-class p1, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mIsMoveToNotificationSetting:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mRequestPermissionLauncher:Landroidx/activity/result/b;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->openNotificationSetting(Landroid/app/Activity;Landroidx/activity/result/b;)V

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setContentPushEnabled(Z)V

    return v2
.end method

.method private openWidgetPromotion(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetManager;->isRequestPinAppWidgetSupported()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;->onAddWidget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->bookmarkWidgetCallback()V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->searchWidgetCallback()V

    return-void
.end method

.method private requestPinAppWidget(Ljava/lang/Class;ILandroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string p2, "appWidgetPreview"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0, p2, v0, p3}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    return-void
.end method

.method public static synthetic s(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->lambda$updateAutoPlay$8(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private searchWidgetCallback()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6313"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->getPinAppWidgetPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v1

    sget v2, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v3, 0x11170

    if-lt v2, v3, :cond_0

    const v2, 0x7f0e081a

    goto :goto_0

    :cond_0
    const v2, 0x7f0e081b

    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->requestPinAppWidget(Ljava/lang/Class;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private setAddWidgetPreference(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;)V
    .locals 2

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->shouldShowWidgetPromotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/X;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/settings/X;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private setContentPushEnabled(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setContentPushPreference(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->updateState(Z)V

    return-void
.end method

.method private setContentPushPreference(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isNeedNewBadge()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    return-void
.end method

.method private shouldShowWidgetPromotion()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->getDevicePosture()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showContentPushSuggestionDialog()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mSuggestionDialog:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mSuggestionDialog:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mSuggestionDialog:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->showDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;)V

    :cond_1
    return-void
.end method

.method private startReadAloudFragment(Landroid/app/Activity;)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-class v0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateAutoPlay()V
    .locals 2

    const-string v0, "pref_auto_play_video"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Lw2/m;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isAutoPlayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    return-void
.end method

.method private updateBackgroundPlay()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;->isBackgroundPlaySupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "pref_background_play"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getBackgroundPlay()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const v0, 0x7f140707

    goto :goto_0

    :cond_0
    const v0, 0x7f140709

    goto :goto_0

    :cond_1
    const v0, 0x7f140708

    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v3, 0x7f060206

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateVideoAssistant()V
    .locals 2

    const-string v0, "pref_new_video_assist"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;->isVideoAssistantSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    instance-of v1, p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidStateForVideoAssistant(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isVideoAssistantEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140ceb

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "537"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x946

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->onStartConsentActivityResult(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mSuggestionDialog:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->updateDialogViewIfNeeded(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0, p1}, Lw2/A;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const p1, 0x7f180084

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initReadAloud()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initContentPush()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initCloseAllTabs()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initSupportReaderMode()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initRegionSpecificFeatures()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initAddWidgetPreference()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object p0

    const-string v0, "period"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->setRegistrationInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initAddWidgetPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->updateVideoAssistant()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->updateAutoPlay()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->updateVideoAssistant()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->updateBackgroundPlay()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mReadAloudPreference:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->isReadAloudVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mContentPushPreference:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isContentPushEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setContentPushPreference(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mSupportReaderMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReaderModeSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isContentsPushVisited()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordContentsPushVisit()V

    const-string v0, "pref_nbadge_contents_push"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->removeNewFeatureFromList(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mIsMoveToNotificationSetting:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->setContentPushEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mIsMoveToNotificationSetting:Z

    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f140a79

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onStartConsentActivityResult(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/W;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/W;-><init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;I)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
