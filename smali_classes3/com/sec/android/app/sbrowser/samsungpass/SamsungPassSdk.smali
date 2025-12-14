.class interface abstract Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;
    }
.end annotation


# virtual methods
.method public confirmSamsungAccount(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;->onResult(Z)V

    return-void
.end method

.method public decrypt([BLjava/lang/String;[B[B)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public disableFmmLock(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;->onResult(Z)V

    return-void
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public generateKey(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public getEnabledAuthenticators()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public hasRegisteredAuthenticator()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isActivated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFmmLockEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isProvisioned()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSamsungAccountLogOut()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSamsungPassInitializedSharedPref()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNativeInitializationSuccess()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
