.class public Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;


# instance fields
.field private mBlockMsg:Landroid/widget/TextView;

.field private mCreateViewCalled:Z

.field private mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

.field private mExtId:Ljava/lang/String;

.field private mIsBlocked:Z

.field private mIsInstallFailed:Z

.field private mIsShowingSixConfirmDialog:Z

.field private mIsUnsupported:Z

.field private mIsUpdateFailed:Z

.field private mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mUninstallBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUpdateFailed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mCreateViewCalled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsShowingSixConfirmDialog:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$7;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addDetailsSwitchListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/auth/password/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private addSecretModeListener()V
    .locals 2

    const-string v0, "six_allow_in_secret_mode"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->lambda$addDetailsSwitchListener$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private initLocaleChangedObserver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private isSixPkgUninstalled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    return p0
.end method

.method private synthetic lambda$addDetailsSwitchListener$0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isPrivacyPopupEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "SixDetailsFragment"

    const-string v0, "onCheckedChanged : First launch!!!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateSixDetailsSwitchState()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->showSixConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "ext_id"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ext_name"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "601"

    const-string p2, "6117"

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateSixDetailsSwitchState()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private moveToSettingsToUninstallSixPkg(Ljava/lang/String;)V
    .locals 5

    const-string v0, "package:"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const-string v2, "SixDetailsFragment"

    if-nez v1, :cond_0

    const-string p0, "moveToSettingsToUninstallSixPkg - No activity. Aborting"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x14000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "moveToSettingsToUninstallSixPkg - exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "moveToSettingsToUninstallSixPkg - NullPointerException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "moveToSettingsToUninstallSixPkg - ActivityNotFoundException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public static newInstance(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "six_ext_id"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    return-object p0
.end method

.method private openGalaxyStore(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SixDetailsFragment"

    const-string v1, "samsungapps://ProductDetail/"

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x10008020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    const-string p1, "openGalaxyStore NullPointerException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openGalaxyStore exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->openGalaxyStoreByUrl(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const p1, 0x7f01011e

    const v1, 0x7f01011f

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "openStore NullPointerException:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "openStore ActivityNotFoundException: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private openGalaxyStoreByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "com.sec.android.app.sbrowser.beta"

    const-string v1, "SixDetailsFragment"

    if-nez p2, :cond_0

    const-string p0, "openGalaxyStoreByUrl fallbackUri is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.android.browser.application_id"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "openGalaxyStoreByUrl failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsShowingSixConfirmDialog:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->moveToSettingsToUninstallSixPkg(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->openGalaxyStore(Ljava/lang/String;)V

    return-void
.end method

.method private showSixConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-boolean p4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsShowingSixConfirmDialog:Z

    if-eqz p4, :cond_0

    return-void

    :cond_0
    new-instance p4, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    invoke-virtual {p4, p4}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsShowingSixConfirmDialog:Z

    return-void
.end method

.method private updateBlockedLayoutIfNeeded()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mUninstallBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    const v2, 0x7f140f9c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f140fbf

    goto :goto_0

    :cond_2
    const v2, 0x7f140fbe

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    const-string v2, "%s%n%n%s"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    const v3, 0x7f140fa3

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUpdateFailed:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    const v3, 0x7f140fc0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f060bf3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mUninstallBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mUninstallBtn:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    :goto_4
    const-string p0, "SixDetailsFragment"

    const-string v0, "updateBlockedLayoutIfNeeded - no components to work."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateGoAddonSettings(Z)V
    .locals 4

    const-string v0, "six_add_on_settings"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "SixDetailsFragment"

    if-nez v0, :cond_0

    const-string p0, "updateGoAddonSettings - goAddOnSettingsPref is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getExtensionOptionPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "updateGoAddonSettings - null url. hide menu"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    if-eqz v3, :cond_3

    const-string p1, "updateGoAddonSettings - Install failed. hide menu"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "updateGoAddonSettings - failed to remove six_add_on_settings pref"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    new-instance p1, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;

    invoke-direct {p1, p0, v2}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private updatePermissions()V
    .locals 3

    const-string v0, "six_permissions"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "SixDetailsFragment"

    if-nez v0, :cond_0

    const-string p0, "updatePermissions - permissiosPref is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    if-eqz v2, :cond_2

    const-string v2, "updatePermissions - Install failed. hide menu"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "updatePermissions - failed to remove six_permissions pref"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getExtensionPermissions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "updatePermissions - extPermissions is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v1, "\n"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSecretModeState()Z
    .locals 3

    const-string v0, "six_allow_in_secret_mode"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->canBeSecretModeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SixDetailsFragment"

    const-string v0, "updateSecretModeState - failed to remove six_allow_in_secret_mode"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getSecretModeState(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateSixDetailsSwitchState()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateGoAddonSettings(Z)V

    return-void
.end method

.method private updateUninstallBtnIfNeeded()V
    .locals 3

    const-string v0, "six_uninstall"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "SixDetailsFragment"

    if-nez v0, :cond_0

    const-string p0, "updateUninstallBtnIfNeeded - six_uninstall is null. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isFromWebStore()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$5;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void

    :cond_2
    :goto_0
    const-string v2, "updateUninstallBtnIfNeeded - No need to show uninstall button"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private updateView()V
    .locals 1

    const v0, 0x7f180078

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    return-void
.end method

.method private updateViewInGalaxyStore()V
    .locals 3

    const-string v0, "six_view_in_galaxy_store"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "SixDetailsFragment"

    if-nez v0, :cond_0

    const-string p0, "updateViewInGalaxyStore - viewInGalaxyStorePref is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "updateViewInGalaxyStore - No SIX pkg. hide menu"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    if-eqz v2, :cond_3

    const-string v2, "updateViewInGalaxyStore - Install failed. hide menu"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "updateViewInGalaxyStore - failed to remove six_view_in_galaxy_store pref"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    if-nez v1, :cond_4

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "601"

    return-object p0
.end method

.method public hideIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isNotInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->isSixPkgUninstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->S()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "no_name"

    const-string v2, "SixDetailsFragment"

    if-nez p1, :cond_0

    const-string p1, "onCreate - argument is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "six_ext_id"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onCreate - Given extension ID is empty"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez p1, :cond_2

    const-string p1, "onCreate - Failed to get SixAppData"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mSixDetailsSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v0, :cond_0

    const-string p1, "SixDetailsFragment"

    const-string p3, "onCreateView - No SixAppData was given. Aborting"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setTitleWithString(Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlockedOrIgnored()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUnsupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstallFailed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mData:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUpdateFailed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUpdateFailed:Z

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x7f0e089f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setTitleWithString(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mCreateViewCalled:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateView()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateSixDetailsSwitchState()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->addDetailsSwitchListener()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsBlocked:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUnsupported:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsInstallFailed:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mIsUpdateFailed:Z

    if-eqz p1, :cond_5

    :cond_4
    const p1, 0x7f0b0b92

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mBlockMsg:Landroid/widget/TextView;

    const p1, 0x7f0b0b9a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mUninstallBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateBlockedLayoutIfNeeded()V

    const p1, 0x7f0b0168

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateViewInGalaxyStore()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updatePermissions()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateSecretModeState()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->addSecretModeListener()V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateUninstallBtnIfNeeded()V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_7

    const p1, 0x7f180026

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    :cond_7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "ext_id"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mExtId:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ext_name"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "601"

    const-string v0, "6109"

    invoke-static {p3, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->initLocaleChangedObserver()V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->mCreateViewCalled:Z

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->registerObserver(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->unregisterObserver(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->hideIfNeeded()V

    return-void
.end method

.method public updateSecretModeState(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateSecretModeState()Z

    return-void
.end method
