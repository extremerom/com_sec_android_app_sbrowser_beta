.class public Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;
    }
.end annotation


# instance fields
.field private final mActiveButtonDrawable:I

.field private final mActiveButtonTextColor:I

.field private mActivity:Landroid/app/Activity;

.field private mBiometricsButton:Landroid/view/View;

.field private mBiometricsButtonText:Landroid/widget/TextView;

.field private mBiometricsButtonsContainer:Landroid/view/View;

.field private mFingerprintButton:Landroid/view/View;

.field private mFingerprintButtonText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private final mInactiveButtonDrawable:I

.field private final mInactiveButtonTextColor:I

.field private mIsDexMode:Z

.field private mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;

.field private mOpenFlipText:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mPreviewBackground:Landroid/view/View;

.field private mPreviewImage:Landroid/view/View;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mIsDexMode:Z

    const p1, 0x7f0b0645

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreview:Landroid/view/View;

    const p1, 0x7f0b08fa

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewImage:Landroid/view/View;

    const p1, 0x7f0b08f6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewBackground:Landroid/view/View;

    const p1, 0x7f0b0857

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mOpenFlipText:Landroid/view/View;

    const p1, 0x7f0800c0

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActiveButtonDrawable:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActivity:Landroid/app/Activity;

    const p3, 0x7f06011f

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActiveButtonTextColor:I

    const p1, 0x7f0800c1

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mInactiveButtonDrawable:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActivity:Landroid/app/Activity;

    const p3, 0x7f060121

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mInactiveButtonTextColor:I

    const p1, 0x7f0b079f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButtonsContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisFingerprintAuth()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0643

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButton:Landroid/view/View;

    const p1, 0x7f0b0644

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButtonText:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0622

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButton:Landroid/view/View;

    const p1, 0x7f0b0623

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButtonText:Landroid/widget/TextView;

    :goto_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mIsDexMode:Z

    const/4 p3, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreview:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreview:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mOpenFlipText:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasFingerprintAuth()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f0b00fd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isMultiBiometricsAuth()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButtonsContainer:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b0518

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mFingerprintButton:Landroid/view/View;

    const p1, 0x7f0b0519

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mFingerprintButtonText:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->updateFingerprintButton(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mFingerprintButton:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/iris/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/auth/iris/a;-><init>(Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButton:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->updateBiometricsButton(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButton:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/iris/a;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/auth/iris/a;-><init>(Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->onClickFingerprintButton()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->onClickBiometricsButton()V

    return-void
.end method

.method private onClickBiometricsButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->updateFingerprintButton(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->updateBiometricsButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;->onAuthChanged(I)V

    return-void
.end method

.method private onClickFingerprintButton()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isMultiBiometricsAuth()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f080253

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->updateFingerprintButton(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->updateBiometricsButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;->onAuthChanged(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->applyDialogStyleIfRequired()V

    return-void
.end method

.method private setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateBiometricsButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mInactiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mBiometricsButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mInactiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private updateFingerprintButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mFingerprintButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mFingerprintButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mFingerprintButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mInactiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mFingerprintButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mInactiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreviewBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewBackground:Landroid/view/View;

    return-object p0
.end method

.method public getPreviewImage()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewImage:Landroid/view/View;

    return-object p0
.end method

.method public onTimeoutStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewBackground:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewBackground:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mIsDexMode:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mPreviewBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnAuthChangedCallback(Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;

    return-void
.end method
