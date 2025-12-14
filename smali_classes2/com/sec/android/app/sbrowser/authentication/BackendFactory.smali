.class Lcom/sec/android/app/sbrowser/authentication/BackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportFingerprintAuthWithNonSamsungDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;-><init>(Landroid/app/Activity;)V

    move-object p0, p1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/authentication/Backend;->setListener(Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/Backend;->setLockModel(Lcom/sec/android/app/sbrowser/auth/LockModel;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/BackendFactory$1;->$SwitchMap$com$sec$android$app$sbrowser$authentication$Authenticator$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/BiometricsBackend;

    invoke-direct {p1, p0, p3, p2}, Lcom/sec/android/app/sbrowser/authentication/BiometricsBackend;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanMultiBackend;

    invoke-direct {p1, p0, p3, p2}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanMultiBackend;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;

    invoke-direct {p1, p3}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;-><init>(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    invoke-direct {p1, p3}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;-><init>(Landroid/widget/ImageView;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/authentication/Backend;->setListener(Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->setLockModel(Lcom/sec/android/app/sbrowser/auth/LockModel;)V

    return-object p1
.end method
