.class public Lcom/sec/android/app/sbrowser/settings/SettingsFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsFragment"

.field private static isThreadRunning:Ljava/lang/Boolean;


# instance fields
.field private mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

.field private mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDrawingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

.field mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

.field private mLastLaunchedTime:J

.field private mListAvailableEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListofAvailabeSearchEngineKeys:[Ljava/lang/String;

.field mSearchEngineChoices:[Ljava/lang/String;

.field private mSearchEngineController:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

.field private mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

.field private mSetAsDefaultCardBlank:Landroidx/preference/PreferenceCategory;

.field private mSettingsFragmentUtil:Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;

.field private mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

.field private mUpdateCardBlank:Landroidx/preference/PreferenceCategory;

.field private mViewModel:Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->isThreadRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mLastLaunchedTime:J

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initPreferences$4()V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initBrowsingAssist$11(Z)V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initializeSetAsDefaultCard$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initPreferences$6(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->initCloudRPCSetting()V

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initPreferences$3(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->hideSetAsDefaultCard()V

    return-void
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/fragment/app/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateCloudSyncEnabledState(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic I()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkIfCloudSyncMenuEnabled()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isCloudSyncMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchVisible(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f060e21

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    const v1, 0x7f140dd9

    const v2, 0x7f14024a

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f140316

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f140315

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isB2BAccount()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isDigitalLegacyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f060206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140ffb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1400f3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    :goto_3
    return-void
.end method

.method private getUpdateCardSummary()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140f27

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f140f28

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private hideSetAsDefaultCard()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCardBlank:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initializeSetAsDefaultCard$13()V

    return-void
.end method

.method private initBrowsingAssist()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/X;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/settings/X;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    return-void
.end method

.method private initCloudRPCSetting()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->initRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    return-void
.end method

.method private initPreferences()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sbrowser.settings.current_url"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCurrentUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSettingsFragmentUtil:Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->shouldDisableDebugSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "debug_settings"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v0, "pref_privacy_notice"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_2
    const-string v0, "pref_drawing_assist"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mDrawingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateDrawingAssistVisibility()V

    const-string v0, "pref_contact_us"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/M;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_3
    const-string v0, "pref_leave_internet"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f140ee7

    goto :goto_0

    :cond_4
    const v1, 0x7f140ee6

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->replaceSecondBrandAsGalaxy()V

    :cond_6
    const-string v0, "about"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_7
    const-string v0, "pref_permissions"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_8
    const-string v0, "notice_board"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v1

    const-string v2, "NoticeList"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Notice_list.json"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    const-string v0, "pref_notifications"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/M;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_b
    const-string v0, "cloud_sync"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCurrentUrl:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDividerVisible(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f140ffe

    goto :goto_2

    :cond_e
    const v2, 0x7f140fff

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSupportAIByParentControl()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "pref_parental_control_notice"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_10
    const-string v0, "pref_browsing_assist"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateBrowsingAssistVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->checkIfCloudSyncMenuEnabled()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updatePreferencesDotVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->initUpdateCard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->initializeSetAsDefaultCard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->initBrowsingAssist()V

    const-string v0, "pref_auto_close_unused_tabs"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_11
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->addEmptyBottomSpace(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private initUpdateCard()V
    .locals 3

    const-string v0, "pref_update_card"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    const-string v0, "pref_update_card_blank"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCardBlank:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f140f29

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getUpdateCardSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCardBlank:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060492

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/L;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/L;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;->setCloseBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/L;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/L;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;->setUpdateBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initializeSetAsDefaultCard()V
    .locals 4

    const-string v0, "pref_set_default_card"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f140eb4

    goto :goto_0

    :cond_0
    const v2, 0x7f140eb3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060492

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    const v2, 0x7f140eac

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;->setPositiveButtonText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    const v2, 0x7f140610

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;->setCloseButtonText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/L;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/L;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/L;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/L;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;->setCloseButtonClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "pref_set_default_card_blank"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCardBlank:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$onActivityResult$20(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initializeSetAsDefaultCard$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$checkIfCloudSyncMenuEnabled$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkIfCloudSyncMenuEnabled$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlAgreeRequired(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->onPreferenceChange(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkIfCloudSyncMenuEnabled$2(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlAgreeRequired(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->onPreferenceClick()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initBrowsingAssist$11(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->showFTUIfRequired()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initBrowsingAssist$12(Landroid/app/Activity;Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ON"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "OFF"

    :goto_1
    const-string v1, "20080"

    invoke-static {p2, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    const/4 p0, 0x1

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return p0
.end method

.method private synthetic lambda$initPreferences$3(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->privacyPolicy()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openWebPageInCustomTab(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initPreferences$4()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->listFilesWithSizesRecursively(Ljava/io/File;Ljava/lang/String;IZ)J

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->isThreadRunning:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$initPreferences$5(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->isThreadRunning:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->isThreadRunning:Ljava/lang/Boolean;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/K;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/K;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSettingsFragmentUtil:Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->launchContactUs()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initPreferences$6(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAboutFragment(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$initPreferences$7(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPermissionsFragment(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initPreferences$8(Landroidx/preference/Preference;)Z
    .locals 2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to launch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initPreferences$9(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p0, "591"

    const-string v0, "5950"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initUpdateCard$16(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->updateCheckedVersionCode()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCardBlank:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140cfa

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initUpdateCard$17(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->updateCheckedVersionCode()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->callAppStore(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCardBlank:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140cfc

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initializeSetAsDefaultCard$13()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->hideSetAsDefaultCard()V

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "onUpdated"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConcurrentModificationException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$initializeSetAsDefaultCard$14(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140cfe

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getCurrentDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->setDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils;->updateSetAsDefaultTipCardHasShown(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$initializeSetAsDefaultCard$15(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140cfd

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getCurrentDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;->startRemoveAnimation(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils;->updateSetAsDefaultTipCardHasShown(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$19(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSummarizeEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadArticlesAloudEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->showFTUIfRequired()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$20(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSummarizeEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadArticlesAloudEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->showFTUIfRequired()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onChanged$18()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onChanged mCloudSync on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateCloudSyncEnabledState(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateBrowsingAssistVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateDrawingAssistVisibility()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "should exit settings"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$showFTUIfRequired$21(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->startBrowsingAssistFragment(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showFTUIfRequired$22(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/X;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/X;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateDrawingAssistVisibility$10(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sec.android.intent.category.SEC_APPLICATION_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.sketchbook"

    const-string v1, "com.samsung.android.app.sketchbook.settings.AiDrawingSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "20095"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private listFilesWithSizesRecursively(Ljava/io/File;Ljava/lang/String;IZ)J
    .locals 11

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    array-length p2, v0

    const/4 v3, 0x0

    :goto_0
    const-string v4, " - "

    const-string v5, "%10d byte"

    if-ge v3, p2, :cond_4

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Cache"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-direct {p0, v6, p1, v4, v5}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->listFilesWithSizesRecursively(Ljava/io/File;Ljava/lang/String;IZ)J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v7, v1

    if-nez p4, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v1, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x5

    if-ge p3, p0, :cond_5

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-wide v1
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/fragment/app/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$showFTUIfRequired$22(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$updateDrawingAssistVisibility$10(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/fragment/app/J;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initBrowsingAssist$12(Landroid/app/Activity;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private onPreferenceChange(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->switchOnOff(Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateCloudSyncEnabledState(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->getSwitchVisible()Z

    move-result p0

    return p0
.end method

.method private onPreferenceClick()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isCloudPackageUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.samsung.android.scloud"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->launchGalaxyAppsForSamsungCloud()V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->showSetting(Landroid/app/Activity;)V

    return v1
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$onViewCreated$0(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initPreferences$8(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$checkIfCloudSyncMenuEnabled$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private replaceSecondBrandAsGalaxy()V
    .locals 1

    const-string v0, "about"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140a3c

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public static synthetic s(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initPreferences$9(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private showSetAsDefaultCardIfRequired()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSettingsFragmentUtil:Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->isNeededToShowSetDefaultCard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCard:Lcom/sec/android/app/sbrowser/common/settings/TipCardPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSetAsDefaultCardBlank:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140cff

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getCurrentDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showUpdateCardIfRequired()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->shouldShowUpdateCard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setUpdateCardEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCard:Lcom/sec/android/app/sbrowser/settings/UpdateCardPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mUpdateCardBlank:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140cfb

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startBrowsingAssistFragment(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistEnabled(Z)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-class v0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initUpdateCard$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initUpdateCard$17(Landroid/view/View;)V

    return-void
.end method

.method private updateBrowsingAssistVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isBrowsingAssistVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getAIStatusSetByEDM()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateCloudSyncEnabledState(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateCloudSyncEnabledState(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method private updateCloudSyncEnabledState(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateCloudSyncEnabledState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "updateCloudSyncEnabledState context is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isCloudSyncMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f060e21

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f140ffe

    goto :goto_0

    :cond_3
    const v3, 0x7f140fff

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140d71

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchVisible(Z)V

    if-nez v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p2

    const v1, 0x7f140dd9

    const v3, 0x7f14024a

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f140316

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f140315

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const p2, 0x7f140c1f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->checkSyncProfile()I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isCloudPackageUpdateAvailable()Z

    move-result v5

    const v6, 0x7f140c1d

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "com.samsung.android.scloud"

    invoke-static {v5, v7}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v1, 0x7f1407d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f140daf

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const v3, 0x7f140dae

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isB2BAccount()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v1, 0x7f1402c0

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isDigitalLegacyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v1, 0x7f1402bf

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    const/16 v4, 0x100

    if-ne v3, v4, :cond_a

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v1, 0x7f1407cf

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    const/16 v4, 0x200

    if-ne v3, v4, :cond_b

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v1, 0x7f1407d2

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const/16 v4, 0x300

    if-ne v3, v4, :cond_d

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f1402bd

    goto :goto_4

    :cond_c
    const v1, 0x7f1402bc

    :goto_4
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const v1, 0x7f1407d1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchVisible(Z)V

    if-eqz v3, :cond_11

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_5

    :cond_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result p2

    if-eqz p2, :cond_10

    :goto_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const p2, 0x7f060206

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_6

    :cond_10
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f140ffb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1400f3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const p2, 0x7f140bfb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    return-void
.end method

.method private updateDrawingAssistVisibility()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isDrawingAssistSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mDrawingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mDrawingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mDrawingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mDrawingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getDrawingAssistStatusSetByEDM()I

    move-result v3

    if-eq v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mDrawingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to launch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePreferencesDotVisibility()V
    .locals 3

    const-string v0, "privacy"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewPrivacySettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    :cond_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const v1, 0x7f14105a

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewAppearanceSettings()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_1
    const-string v0, "about"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewUpdate()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_2
    const-string v0, "layout_and_menu"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewLayoutSettings()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    :cond_3
    const-string v0, "notice_board"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewPrivacyNoticeHistory()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_4
    const-string v0, "useful_features"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewUsefulFeatures()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_5
    const-string v0, "set_homepage"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewHomepageSettings()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_6
    const-string v0, "pref_auto_close_unused_tabs"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewAutoCloseUnusedTabsSettings()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private updateSummary()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    const-string v1, "set_homepage"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f060206

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quick_access"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f140b92

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1407ee

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v4, "internet-native://newtab/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v5, v3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v0, "set_search_engine"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListAvailableEngines()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->populateValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListofAvailabeSearchEngineKeys:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->populateChoices()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineChoices:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListofAvailabeSearchEngineKeys:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineChoices:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListofAvailabeSearchEngineKeys:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListofAvailabeSearchEngineKeys:[Ljava/lang/String;

    array-length v4, v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListofAvailabeSearchEngineKeys:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineChoices:[Ljava/lang/String;

    aget-object v1, v1, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const-string v1, ""

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineChoices:[Ljava/lang/String;

    aget-object v1, v1, v3

    :cond_7
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_9
    :goto_4
    const-string v0, "pref_auto_close_unused_tabs"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getTitles()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getAutoCloseUnusedTabsSettings()I

    move-result v5

    if-ltz v5, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v5, v4, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getTitles()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getAutoCloseUnusedTabsSettings()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v5, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v4, v5, v3, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initPreferences$5(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$initPreferences$7(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$onActivityResult$19(Z)V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$onChanged$18()V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->lambda$showFTUIfRequired$21(Landroid/app/Activity;Z)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140ca7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->getDevicePosture()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "501_FL"

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result p0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->SEM_DISPLAY_DEVICE_TYPE_SUB:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    const-string p0, "501_FR"
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const-string p0, "501"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xa3

    if-ne p1, p3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->onRoleManagerResult(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x946

    const/4 v0, -0x1

    if-ne p1, p3, :cond_2

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x947

    if-ne p1, p3, :cond_3

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/M;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/M;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    goto :goto_0

    :cond_3
    const/16 p3, 0x948

    if-ne p1, p3, :cond_4

    if-ne p2, v0, :cond_4

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->getValue()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->updateConsentStatus(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSummarizeEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadArticlesAloudEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->showFTUIfRequired()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onChanged(ILjava/lang/Object;)V
    .locals 2

    sget-object p2, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "onChanged receiving propertyType = "

    invoke-static {p1, v0, p2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "master sync : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->checkSyncProfile()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateCloudSyncEnabledState(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/K;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/K;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "show_with_homepage_settings"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_0
    new-instance p1, LZ3/x;

    invoke-direct {p1, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;

    invoke-virtual {p1, v0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mViewModel:Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const v0, 0x7f100021

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b0b1b

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->setColorForActionBarIcon(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCtrlAndFKeyPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->onSearchSelected()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineChoices:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListofAvailabeSearchEngineKeys:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineController:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->destroy()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineController:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mCloudSync:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->destroy()V

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->dismissFTUDialog()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->resetLastLaunchedTime()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updateSummary()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->updatePreferencesDotVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->showUpdateCardIfRequired()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->showSetAsDefaultCardIfRequired()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->updateSubtitleButtonVisibility()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/K;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/K;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSearchKeyPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->onSearchSelected()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSettingsFragmentUtil:Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140f14

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->showSettingsAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineController:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mSearchEngineController:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    :cond_1
    const v0, 0x7f180071

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->initPreferences()V

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isBrowsingAssistSubMenuKey(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mBrowsingAssist:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->performClick()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mViewModel:Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->getShouldExitSettings()Landroidx/lifecycle/X;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/y;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/y;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public populateChoices()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public populateValues()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setActionButtonTintColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0601f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setColorForActionBarIcon(ILandroid/view/Menu;)V
    .locals 0

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->setActionButtonTintColor(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showFTUIfRequired()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mLastLaunchedTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "Prevent multiple launching of FTU pop-up"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->mLastLaunchedTime:J

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Show FTU Dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->startBrowsingAssistFragment(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
