.class public Lcom/sec/android/app/sbrowser/auth/AuthenticatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/auth/Authenticator;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne p0, v1, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-ne v0, v1, :cond_2

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_2
    and-int/lit8 p1, p0, 0x2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x23

    if-le p0, p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportFingerprintAuthWithNonSamsungDevice()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;-><init>()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportFingerprintAuthWithNonSamsungDevice()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;-><init>()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;-><init>()V

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;-><init>()V

    goto :goto_0

    :cond_7
    and-int/lit8 p1, p0, 0x4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->useSemIrisManager()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;-><init>()V

    goto :goto_0

    :cond_8
    new-instance p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;-><init>()V

    goto :goto_0

    :cond_9
    and-int/lit8 p1, p0, 0x8

    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;-><init>()V

    goto :goto_0

    :cond_a
    const/16 p1, 0x10

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_b

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;-><init>()V

    goto :goto_0

    :cond_b
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/AuthenticatorFactory;->hookAuthenticator(Lcom/sec/android/app/sbrowser/auth/Authenticator;)Lcom/sec/android/app/sbrowser/auth/Authenticator;

    move-result-object p0

    return-object p0
.end method

.method private static hookAuthenticator(Lcom/sec/android/app/sbrowser/auth/Authenticator;)Lcom/sec/android/app/sbrowser/auth/Authenticator;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useSherlockEnvironment()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/auth/FakeAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/FakeAuthenticator;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useIntentBasedBiometrics()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;-><init>()V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;-><init>(Lcom/sec/android/app/sbrowser/auth/Authenticator;)V

    return-object v0
.end method
