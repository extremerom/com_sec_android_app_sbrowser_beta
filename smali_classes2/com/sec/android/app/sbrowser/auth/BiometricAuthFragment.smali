.class public Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;
.super Lcom/sec/android/app/sbrowser/auth/AuthFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthView;
.implements Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;
.implements Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;
.implements Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;
.implements Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;


# instance fields
.field protected mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

.field protected mCancelButton:Landroid/view/View;

.field protected mDescription:Landroid/widget/TextView;

.field protected mDisableButton:Landroid/view/View;

.field protected mIsDexMode:Z

.field protected mIsMultiWindowMode:Z

.field private mIsScreenOn:Z

.field private mLaunchOnLandscape:Z

.field private mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

.field private mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

.field protected mUsePasswordButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;-><init>()V

    return-void
.end method

.method private dismissDialogIfRequired()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->isResetDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BiometricAuthFragment"

    const-string v0, "dismissDialog is ignored because of reset dialog"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->dismissErrorDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;->dismissDialog()V

    :cond_1
    return-void
.end method

.method private exitMultiWindowModeIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->isMultiWindowModeSupported()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsMultiWindowMode:Z

    if-eqz v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f140ff8

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    const v0, 0x7f140ff7

    goto :goto_0

    :cond_3
    const v0, 0x7f140ff6

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->exitMultiWindowMode(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BiometricAuthFragment"

    const-string v1, "Failed to make fullscreen, finish this activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method private isIrisType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasIrisAuth()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initializeView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onCancelClick()V

    return-void
.end method

.method private synthetic lambda$initializeView$1(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mUsePasswordButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onUsePasswordClick()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onResetSecretModeClick()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initializeView$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onDisableSecretModeClick()V

    return-void
.end method

.method private synthetic lambda$onAuthSuccess$3()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->enableSecretMode()V

    return-void
.end method

.method private synthetic lambda$updateIrisPreviewLayout$4()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->startAuthenticate()V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->lambda$updateIrisPreviewLayout$4()V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->lambda$initializeView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->lambda$initializeView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->lambda$initializeView$0(Landroid/view/View;)V

    return-void
.end method

.method private setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldAuthenticateOnWindowFocusChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasIrisAuth()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isDexLiveConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->lambda$onAuthSuccess$3()V

    return-void
.end method

.method private updateIrisPreviewLayout(Z)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;->applyDialogStyleIfRequired()V

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v2, 0x79

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->getIrisLayoutResource(Landroid/app/Activity;ZZ)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->initializeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mLaunchOnLandscape:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_4
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/auth/j;-><init>(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private usePasswordAuth()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x79

    const/16 v2, 0x62

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;->setResultToParent(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public canAuthenticate()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuth()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getPreviewImage()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b0acb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mCancelButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/k;-><init>(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0ace

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mUsePasswordButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/k;-><init>(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0acc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDisableButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/k;-><init>(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->setListener(Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;)V

    const v0, 0x7f0b00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0b00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x7f110000

    goto :goto_0

    :cond_1
    const v0, 0x7f110002

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->setDefaultText()V

    return-void
.end method

.method public isMultiBiometricAuth()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMultiWindowModeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsScreenOn:Z

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapterFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;I)Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mLaunchOnLandscape:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->exitMultiWindowModeIfNeeded()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsScreenOn:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->initializeView(Landroid/view/View;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->addListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V

    return-void
.end method

.method public onAttemptLockout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->showDeniedView()V

    return-void
.end method

.method public onAuthBlock()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->usePasswordAuth()V

    return-void
.end method

.method public onAuthCancel(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onAuthChanged(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapterFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;I)Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    iget p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->startAuthenticate()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->updateIrisPreviewLayout(Z)V

    :goto_1
    return-void
.end method

.method public onAuthRetry()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->setDefaultText()V

    return-void
.end method

.method public onAuthSuccess(I)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->dismissDialogIfRequired()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/j;-><init>(Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->enableSecretMode()V

    :goto_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordOnAuthSuccessFromBiometricAuth(II)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;->dismissDialog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCancelClick()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordCancelButtonClickFromBiometricAuth(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->dismissDialogIfRequired()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    iget p2, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->inflate(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "BiometricAuthFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasIrisAuth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->dismissDialogIfRequired()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->removeListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V

    return-void
.end method

.method public onDisableSecretModeClick()V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x79

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordDisableButtonClickFromBiometricAuth(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setDisabledClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setSecretModeEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onErrorDialogOk()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->shouldAuthenticateOnWindowFocusChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/auth/CompositeAuthViewAdapter;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->startAuthenticate()V

    return-void
.end method

.method public onLockoutFinished()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mUsePasswordButton:Landroid/widget/Button;

    const v1, 0x7f140e16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onTimeoutStateChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->startAuth()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->setDefaultText()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsMultiWindowMode:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->exitMultiWindowModeIfNeeded()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "BiometricAuthFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsScreenOn:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->shouldAuthenticateOnWindowFocusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->dismissDialogIfRequired()V

    :cond_0
    return-void
.end method

.method public onResetSecretModeClick()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordResetButtonClickFromBiometricAuth(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->showResetDialog()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->exitMultiWindowModeIfNeeded()V

    const-string v0, "BiometricAuthFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsScreenOn:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->shouldAuthenticateOnWindowFocusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->startAuthenticate()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordOnResumeFromBiometricAuth(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasIrisAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public onRotationChanged(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRotationChanged rotation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->rotation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricAuthFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuth()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuth()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->isIrisType()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLandscapeIrisPreview()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->updateIrisPreviewLayout(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->isMultiBiometricAuth()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisFingerprintAuth()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentFingerprintAuth()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->isIrisType()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLandscapeIrisPreview()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->updateIrisPreviewLayout(Z)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;->applyDialogStyleIfRequired()V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_is_recreated"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const-string v0, "key_density"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->isMultiWindowModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onTimeoutStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mUsePasswordButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mUsePasswordButton:Landroid/widget/Button;

    const p1, 0x7f140bf0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public onUsePasswordClick()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordUsePasswordClickFromBiometricAuth(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->usePasswordAuth()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->onWindowFocusChanged(Z)V

    const-string v0, "onWindowFocusChanged hasFocus:"

    const-string v1, "BiometricAuthFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->shouldAuthenticateOnWindowFocusChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->startAuthenticate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultText()V
    .locals 0

    return-void
.end method

.method public showDeniedView()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mUsePasswordButton:Landroid/widget/Button;

    const v0, 0x7f140bf0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public showDialogIfRequired()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;->showDialogIfRequired()V

    return-void
.end method

.method public showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showHandleAttemptLockout(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->handleAttemptLockout(J)V

    return-void
.end method

.method public showIdentifyImg()V
    .locals 0

    return-void
.end method

.method public showMessage(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startAuthenticate()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->dismissErrorDialog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->canAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onTimeoutStateChanged(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->showHandleAttemptLockout(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->startAuth()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->setDefaultText()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public stopAuthenticate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    return-void
.end method
