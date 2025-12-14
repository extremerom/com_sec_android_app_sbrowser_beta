.class public Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthActivity;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInitialInfoShowing:Z = false


# instance fields
.field private mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

.field private mIsPaused:Z

.field private mLockSecretModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mPrevLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;-><init>()V

    return-void
.end method

.method private createPassword()V
    .locals 2

    const-string v0, "InitialInfoActivity"

    const-string v1, "createPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/n;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/n;-><init>(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->createPassword(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method private finishIfLanguageChanged()V
    .locals 2

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->finish()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->lambda$initSwitches$0(Landroid/view/View;)V

    return-void
.end method

.method private initButtons()V
    .locals 3

    const v0, 0x7f0b0be1

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/m;-><init>(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private initDescription()V
    .locals 7

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b061b

    invoke-virtual {p0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b061a

    invoke-virtual {p0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0619

    invoke-virtual {p0, v3}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isKnoxWarrantyBlown()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/auth/m;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/sec/android/app/sbrowser/auth/m;-><init>(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v0

    const v4, 0x7f140622

    const v6, 0x7f140623

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isStoredDataErasedForNonSdp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f140e19

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v6

    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f140621

    goto :goto_2

    :cond_3
    const p0, 0x7f140620

    :goto_2
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f140e14

    goto :goto_3

    :cond_5
    const v0, 0x7f140e13

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140e0f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140e10

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f140e12

    goto :goto_4

    :cond_6
    const p0, 0x7f140e11

    :goto_4
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%n- %s%n- %s%n- %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method private initSwitches()V
    .locals 3

    const v0, 0x7f0b06b9

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mLockSecretModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->updateSwitchContentDescription(Z)V

    const v0, 0x7f0b06b8

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/m;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/m;-><init>(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->lambda$createPassword$3(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->lambda$initButtons$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->lambda$initDescription$2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$createPassword$3(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setDoNotShowSecretModeInitial(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPasswordAuthEnabled(Z)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initButtons$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->startSecretMode()V

    return-void
.end method

.method private synthetic lambda$initDescription$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->onAboutSecretModeClicked()V

    return-void
.end method

.method private synthetic lambda$initSwitches$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mLockSecretModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mLockSecretModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->updateSwitchContentDescription(Z)V

    :cond_0
    return-void
.end method

.method private noPassword()V
    .locals 2

    const-string v0, "InitialInfoActivity"

    const-string v1, "noPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeAccessTypeNone()V

    const/16 v0, 0x1f6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->finish()V

    return-void
.end method

.method private onAboutSecretModeClicked()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/DisclaimerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordAboutSecretModeFromInitialInfo()V

    return-void
.end method

.method private setInitialInfoShowing(Z)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->sInitialInfoShowing:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startSecretMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mIsPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mLockSecretModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordCreatePasswordFromInitialInfo()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->createPassword()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordNoPasswordFromInitialInfo()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->noPassword()V

    :goto_0
    return-void
.end method

.method private updateSwitchContentDescription(Z)V
    .locals 3

    const v0, 0x7f0b06b7

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b06b8

    invoke-virtual {p0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const p1, 0x7f14104a

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const p1, 0x7f141049

    goto :goto_0

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f140a0f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setInitialInfoActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setActivatedInitialInfoTaskId(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->setInitialInfoShowing(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setDoNotShowSecretModeInitial(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->sInitialInfoShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->setInitialInfoShowing(Z)V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v0, "language"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mPrevLanguage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mPrevLanguage:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->finishIfLanguageChanged()V

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getAuthManagerDelegate()Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setDelegate(Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setResetSecretModeIsProgress(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setInitialInfoActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setActivatedInitialInfoTaskId(I)V

    const p1, 0x7f0e0825

    invoke-virtual {p0, p1}, Lm/n;->setContentView(I)V

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    const p1, 0x7f0609c7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_INITIAL_INFO:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->initSwitches()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->initButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->initDescription()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->resetDecorViewVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onDestroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setInitialInfoActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setActivatedInitialInfoTaskId(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->setInitialInfoShowing(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordBackPressedFromInitialInfo()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mIsPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordOnResumeFromInitialInfo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mIsPaused:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "language"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
