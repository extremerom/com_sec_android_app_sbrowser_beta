.class public Lcom/sec/android/app/sbrowser/secret_mode/DataProtectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;)Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;)V

    return-object v0

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;)V

    return-object p2
.end method
