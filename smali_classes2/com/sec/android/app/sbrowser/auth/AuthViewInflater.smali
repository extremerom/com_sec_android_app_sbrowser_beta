.class public Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getIrisLayoutResource(Landroid/app/Activity;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->getIrisLayoutResource(Landroid/app/Activity;ZZ)I

    move-result p0

    return p0
.end method

.method public static getIrisLayoutResource(Landroid/app/Activity;ZZ)I
    .locals 2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->isFingerprintAuthType(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f0e021a

    goto :goto_0

    :cond_0
    const p0, 0x7f0e021b

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLandscapeIrisPreview()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->getIrisLayoutResourceForLandscape(ZZ)I

    move-result p0

    return p0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->getIrisLayoutResourceForReversedLandscape(ZZ)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->getIrisLayoutResourceForPortrait(Landroid/app/Activity;ZZ)I

    move-result p0

    return p0

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->getIrisLayoutResourceForPortrait(Landroid/app/Activity;ZZ)I

    move-result p0

    return p0
.end method

.method private static getIrisLayoutResourceForLandscape(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0e046e

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f0e0473

    goto :goto_0

    :cond_1
    const p0, 0x7f0e0479

    :goto_0
    return p0
.end method

.method private static getIrisLayoutResourceForPortrait(Landroid/app/Activity;ZZ)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->shouldUseTabletLayoutForIris(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f0e0474

    goto :goto_0

    :cond_0
    const p0, 0x7f0e047a

    :goto_0
    return p0

    :cond_1
    const p0, 0x7f0e0470

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const p0, 0x7f0e0477

    :goto_1
    return p0

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const p0, 0x7f0e0475

    :goto_2
    return p0
.end method

.method private static getIrisLayoutResourceForReversedLandscape(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0e046d

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f0e0472

    goto :goto_0

    :cond_1
    const p0, 0x7f0e0478

    :goto_0
    return p0
.end method

.method public static inflate(Landroid/app/Activity;II)Landroid/view/View;
    .locals 1

    const/16 v0, 0x79

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4

    const/16 v0, 0x10

    if-eq p2, v0, :cond_3

    const/16 v0, 0x12

    if-eq p2, v0, :cond_4

    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    const-string p0, "Invalid auth type : "

    const-string p1, "AuthViewInflater"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->inflateNonSamsung(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->inflateFace(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->inflateIris(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->inflateFingerprint(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static inflateFace(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f0e0210

    goto :goto_0

    :cond_0
    const p1, 0x7f0e0211

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static inflateFingerprint(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f0e021a

    goto :goto_0

    :cond_0
    const p1, 0x7f0e021b

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static inflateIris(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFolderType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f0e0471

    goto :goto_0

    :cond_0
    const p1, 0x7f0e0476

    :goto_0
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->getIrisLayoutResource(Landroid/app/Activity;Z)I

    move-result p1

    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static inflateNonSamsung(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f0e0521

    goto :goto_0

    :cond_0
    const p1, 0x7f0e0522

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static isFingerprintAuthType(Landroid/app/Activity;)Z
    .locals 1

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static shouldUseTabletLayoutForIris(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
