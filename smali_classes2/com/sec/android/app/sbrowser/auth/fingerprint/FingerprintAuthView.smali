.class public interface abstract Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getBottomMarginForFingerprint(Landroid/app/Activity;)I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getInDisplayFingerprintSensorBottomMargin(Z)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method
