.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;
    }
.end annotation


# instance fields
.field private final mActiveButtonDrawable:I

.field private final mActiveButtonTextColor:I

.field private mBiometricsButtonsContainer:Landroid/view/View;

.field private mFaceButton:Landroid/view/View;

.field private mFaceButtonText:Landroid/widget/TextView;

.field private mFingerprintButton:Landroid/view/View;

.field private mFingerprintButtonText:Landroid/widget/TextView;

.field protected mImageView:Landroid/widget/ImageView;

.field private final mInactiveButtonDrawable:I

.field private final mInactiveButtonTextColor:I

.field private mIntelligentButton:Landroid/view/View;

.field private mIntelligentButtonText:Landroid/widget/TextView;

.field private mIrisButton:Landroid/view/View;

.field private mIrisButtonText:Landroid/widget/TextView;

.field protected mIsDexMode:Z

.field private mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const p2, 0x7f0b00fd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isMultiBiometricsAuth()Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f080253

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0800c0

    iput p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mActiveButtonDrawable:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f06011f

    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mActiveButtonTextColor:I

    const p2, 0x7f0800c1

    iput p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mInactiveButtonDrawable:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060121

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mInactiveButtonTextColor:I

    const v3, 0x7f0b079f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mBiometricsButtonsContainer:Landroid/view/View;

    const v3, 0x7f0b0518

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFingerprintButton:Landroid/view/View;

    const v3, 0x7f0b0519

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFingerprintButtonText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFingerprintButton:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->updateFingerprintButton(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mBiometricsButtonsContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0b04f7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButton:Landroid/view/View;

    const v3, 0x7f0b04f8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButtonText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButton:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->updateFaceButton(Z)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mBiometricsButtonsContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0b0622

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIntelligentButton:Landroid/view/View;

    const v3, 0x7f0b0623

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIntelligentButtonText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIntelligentButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIntelligentButton:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIntelligentButton:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIntelligentButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mBiometricsButtonsContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0b0643

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIrisButton:Landroid/view/View;

    const v3, 0x7f0b0644

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIrisButtonText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIrisButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIrisButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/auth/fingerprint/b;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIrisButton:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIrisButtonText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIsDexMode:Z

    if-nez p3, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->onClickFingerprintButton()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->onClickFaceButton()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;

    const/16 p1, 0x10

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;->onAuthChanged(I)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;->onAuthChanged(I)V

    return-void
.end method

.method private onClickFaceButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

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
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->updateFingerprintButton(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->updateFaceButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;->onAuthChanged(I)V

    return-void
.end method

.method private onClickFingerprintButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isMultiBiometricsAuth()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->updateFingerprintButton(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->updateFaceButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;->onAuthChanged(I)V

    return-void
.end method

.method private updateFaceButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mActiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mActiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mInactiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFaceButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mInactiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private updateFingerprintButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFingerprintButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mActiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFingerprintButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mActiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFingerprintButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mInactiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mFingerprintButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mInactiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public onAuthError(I)V
    .locals 2

    const-string v0, "onAuthError errorCode : "

    const-string v1, "FingerprintImageAdapter"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIsDexMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setErrorImage(I)V

    :cond_0
    return-void
.end method

.method public onAuthRetry()V
    .locals 2

    const-string v0, "FingerprintImageAdapter"

    const-string v1, "onAuthRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setDefaultImage(Z)V

    return-void
.end method

.method public onAuthSuccess()V
    .locals 2

    const-string v0, "FingerprintImageAdapter"

    const-string v1, "onAuthSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setDefaultImage(Z)V

    return-void
.end method

.method public onTimeoutStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onTimeoutStateChanged : "

    const-string v1, "FingerprintImageAdapter"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mIsDexMode:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setDefaultImage(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDefaultImage(Z)V
    .locals 2

    const-string v0, "setDefaultImage success : "

    const-string v1, "FingerprintImageAdapter"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f080253

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isMultiBiometricsAuth()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setErrorImage(I)V
    .locals 2

    const-string v0, "setErrorImage errorCode : "

    const-string v1, "FingerprintImageAdapter"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0801ef

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0801ee

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0801ec

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0801ed

    :goto_0
    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnAuthChangedCallback(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mOnAuthChangedCallback:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const-string v0, "setVisibility visibility: "

    const-string v1, "FingerprintImageAdapter"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
