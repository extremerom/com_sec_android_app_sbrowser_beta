.class public Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBiometricImage:Landroid/view/View;

.field private mBiometricsImageContainer:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const p1, 0x7f0b00fd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mImageView:Landroid/widget/ImageView;

    const p1, 0x7f0b079f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mBiometricsImageContainer:Landroid/view/View;

    const p1, 0x7f0b04f7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mBiometricImage:Landroid/view/View;

    return-void
.end method

.method private setDefaultImage()V
    .locals 2

    const-string v0, "FaceImageAdapter"

    const-string v1, "setDefaultImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mBiometricsImageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->mBiometricImage:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->setDefaultImage()V

    :goto_0
    return-void
.end method
