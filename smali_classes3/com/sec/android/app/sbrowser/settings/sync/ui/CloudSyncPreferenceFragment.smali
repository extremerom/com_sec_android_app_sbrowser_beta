.class public Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;,
        Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mBookmarks:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mOpenTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private final mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

.field private final mSamsungAccountSignOutReceiver:Landroid/content/BroadcastReceiver;

.field private mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

.field private mTurnOnAutoSync:Landroidx/preference/Preference;

.field private mWifiSyncOnly:Lcom/sec/android/app/sbrowser/settings/sync/ui/WifiSyncOnlySettingPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;-><init>(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSamsungAccountSignOutReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createSyncItemSwitches()V
    .locals 1

    const-string v0, "sync_open_tabs_switch"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mOpenTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string v0, "sync_bookmarks_switch"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mBookmarks:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSyncInternalizationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->removeSyncItemSwitches()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mOpenTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mBookmarks:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setEnableSyncItemSwitches(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private isAllSyncSettingsOff()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isOpenTabSyncEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBookmarkSyncEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->lambda$onCreate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->lambda$showAutoSyncDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->lambda$onCreate$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->showAutoSyncDialog()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$1(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    const-string v0, "CloudSyncPreferenceFragment"

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string p0, "Network not available"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "force"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-static {p1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;->showProgressBar(Z)V

    goto :goto_0

    :cond_1
    const-string p0, "onPreferenceClick acc null!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private synthetic lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->setSamsungCloudSyncAutomatically(Z)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->isAllSyncSettingsOff()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setEnableSyncItemSwitches(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setCheckedSyncItemSwitches(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showAutoSyncDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showAutoSyncDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method public static synthetic m(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->lambda$showAutoSyncDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->onSyncStatusChanged(I)V

    return-void
.end method

.method private onSyncStatusChanged(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSyncStatusChanged which :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudSyncPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mAccount:Landroid/accounts/Account;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-static {p1, v2}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mAccount:Landroid/accounts/Account;

    invoke-static {v3, v2}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSyncStatusChanged isActive : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSyncStatusChanged isPending : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSyncStatusChanged mSyncStatus : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$3;->$SwitchMap$com$sec$android$app$sbrowser$settings$sync$ui$CloudSyncPreferenceFragment$SyncStatus:[I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/16 v3, 0x65

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    const/16 v4, 0x64

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_8

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_5
    if-nez v2, :cond_8

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    if-nez p1, :cond_8

    if-eqz v2, :cond_7

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mProgressHandler:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_1
    return-void

    :cond_9
    :goto_2
    const-string p0, "onSyncStatusChanged activity is not attached"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setSyncNowSummary(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->updateSyncStatus()V

    return-void
.end method

.method private registerSamsungAccountSignOutReceiver()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSamsungAccountSignOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInternetAccountEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.intent.action.INTERNET_ACCOUNT_SIGNOUT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private removeSyncItemSwitches()V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mOpenTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mBookmarks:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private setCheckedSyncItemSwitches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mOpenTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mBookmarks:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private setDefaultSyncNowSummary()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f141000

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f140ffe

    goto :goto_0

    :cond_1
    const v1, 0x7f140fff

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEnableSyncItemSwitches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mOpenTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mBookmarks:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setLastSyncTimeSyncNowSummary(J)V
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f140672

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u200e "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSyncNowSummary(Ljava/lang/Boolean;)V
    .locals 11

    const-string v0, "get last success time : "

    const-string v1, "get last failure time : "

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const-string v3, "CloudSyncPreferenceFragment"

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isMobileConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isWifiSyncOnlySetting()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->cancelSync()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1402be

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const p1, 0xf424e

    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p1

    const v2, 0x7f140ff9

    const v4, 0x7f141003

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    sget-object v7, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    if-ne p1, v7, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mAccount:Landroid/accounts/Account;

    const-string v4, "com.sec.android.app.sbrowser.beta"

    invoke-static {p1, v4}, Lcom/sec/sbrowser/spl/wrapper/MajoContentResolver;->semGetSyncStatusInfo(Landroid/accounts/Account;Ljava/lang/String;)Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->isBaseInstanceNull()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p1, "SemSyncStatusInfo is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setDefaultSyncNowSummary()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->getLastFailureTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->getLastSuccessTime()J

    move-result-wide v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v7, v5

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    cmp-long p1, v9, v5

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setDefaultSyncNowSummary()V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setLastSyncTimeSyncNowSummary(J)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setDefaultSyncNowSummary()V

    goto :goto_2

    :cond_8
    const-string p1, "SEP not supported"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSyncInternalizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_9
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v0, "sync_success_time"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getLongValuePrivate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v3, v0, v5

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setDefaultSyncNowSummary()V

    goto :goto_2

    :cond_a
    const-string v3, "sync_success"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setLastSyncTimeSyncNowSummary(J)V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setDefaultSyncNowSummary()V

    :cond_d
    :goto_2
    return-void

    :cond_e
    :goto_3
    const-string p0, "setSyncNowSummary activity is not attached"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setTitle()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140dae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140daf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140da4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showAutoSyncDialog()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f141089

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f141088

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v2, 0x7f1402ac

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v2, 0x7f14108f

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private unregisterSamsungAccountSignOutReceiver()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSamsungAccountSignOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateSyncStatus()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->updateSyncSwitchState(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mWifiSyncOnly:Lcom/sec/android/app/sbrowser/settings/sync/ui/WifiSyncOnlySettingPreference;

    if-nez v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :cond_4
    :goto_2
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_5
    :goto_3
    const-string p0, "CloudSyncPreferenceFragment"

    const-string v0, "updateSyncStatus activity is not attached"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSyncSwitchState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mTurnOnAutoSync:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setEnableSyncItemSwitches(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140cd7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "517"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f180015

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "turn_on_auto_sync"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mTurnOnAutoSync:Landroidx/preference/Preference;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/sync/ui/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/a;-><init>(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->createSyncItemSwitches()V

    const-string p1, "wifi_sync_only"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/WifiSyncOnlySettingPreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mWifiSyncOnly:Lcom/sec/android/app/sbrowser/settings/sync/ui/WifiSyncOnlySettingPreference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mWifiSyncOnly:Lcom/sec/android/app/sbrowser/settings/sync/ui/WifiSyncOnlySettingPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140ffd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mWifiSyncOnly:Lcom/sec/android/app/sbrowser/settings/sync/ui/WifiSyncOnlySettingPreference;

    const v0, 0x7f030057

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->setEntries(I)V

    const-string p1, "sync_now"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/sync/ui/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/a;-><init>(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isWifiOnly()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSyncInternalizationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mWifiSyncOnly:Lcom/sec/android/app/sbrowser/settings/sync/ui/WifiSyncOnlySettingPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mAccount:Landroid/accounts/Account;

    if-eqz p1, :cond_6

    const-string v0, "com.sec.android.app.sbrowser.beta"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;->showProgressBar(Z)V

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;->showProgressBar(Z)V

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncNow:Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;->showProgressBar(Z)V

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncStatus:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$SyncStatus;

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncObserverHandle:Ljava/lang/Object;

    if-nez p1, :cond_5

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V

    const/4 v0, 0x7

    invoke-static {v0, p1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->registerSamsungAccountSignOutReceiver()V

    :cond_6
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140da4

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p3, Lcom/sec/android/app/sbrowser/auth/password/a;

    const/4 v0, 0x5

    invoke-direct {p3, v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140cd6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140d71

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setSALoggingId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->unregisterSamsungAccountSignOutReceiver()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "sync_open_tabs_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sync_bookmarks_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->isAllSyncSettingsOff()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->setSamsungCloudSyncAutomatically(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->updateSyncStatus()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->updateSyncStatus()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setSyncNowSummary(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->setTitle()V

    return-void
.end method
