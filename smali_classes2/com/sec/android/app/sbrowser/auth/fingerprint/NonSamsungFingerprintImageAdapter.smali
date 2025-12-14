.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/NonSamsungFingerprintImageAdapter;
.super Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;-><init>(Landroid/view/View;IZ)V

    return-void
.end method


# virtual methods
.method public setDefaultImage(Z)V
    .locals 2

    const-string v0, "setDefaultImage success : "

    const-string v1, "NonSamsungFingerprintImageAdapter"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f08023f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f060293

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0603fc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void
.end method

.method public setErrorImage(I)V
    .locals 2

    const-string v0, "setErrorImage errorCode : "

    const-string v1, "NonSamsungFingerprintImageAdapter"

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
