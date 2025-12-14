.class public interface abstract Lcom/sec/android/app/sbrowser/authentication/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/authentication/FingerprintRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;,
        Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;,
        Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;,
        Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;
    }
.end annotation


# direct methods
.method public static createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->AUTO:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    return-object v0
.end method

.method public static get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->get()Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V
.end method

.method public abstract canUseFingerprint()Z
.end method

.method public abstract canUseFingerprintAndIris()Z
.end method

.method public abstract canUseFingerprintOrIris()Z
.end method

.method public abstract canUseIntelligentScan()Z
.end method

.method public abstract canUseIris()Z
.end method

.method public abstract enableSamsungPass()Z
.end method

.method public abstract getNonce()[B
.end method

.method public abstract handleCallback()V
.end method

.method public abstract hasDisabledBiometrics()Z
.end method

.method public abstract isBiometricsSupported()Z
.end method

.method public abstract isFingerprintSupported()Z
.end method

.method public abstract isIrisSupported()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract makePendingResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V
.end method

.method public abstract register(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
.end method

.method public abstract registerFingerprint(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method
