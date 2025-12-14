.class public Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintRegistration;
.super Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;
.source "SourceFile"


# instance fields
.field private final mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintRegistration;->lambda$run$0(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;->onResult(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintRegistration;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/h;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/authentication/h;-><init>(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->registerFinger(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerFinger() was failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SpassFingerprintRegistration"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;->onResult(Z)V

    :goto_0
    return-void
.end method
