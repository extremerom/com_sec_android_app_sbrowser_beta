.class public final LA5/w;
.super Lcom/google/android/gms/common/internal/i;
.source "SourceFile"


# virtual methods
.method public final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LA5/y;

    if-eqz v1, :cond_1

    move-object p0, v0

    check-cast p0, LA5/y;

    goto :goto_0

    :cond_1
    new-instance v0, LA5/y;

    invoke-direct {v0, p1, p0}, LA5/y;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    sget-object p0, Lo5/a;->a:Lcom/google/android/gms/common/Feature;

    sget-object v0, Lo5/a;->b:Lcom/google/android/gms/common/Feature;

    filled-new-array {p0, v0}, [Lcom/google/android/gms/common/Feature;

    move-result-object p0

    return-object p0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    const-string p0, "FIDO2_ACTION_START_SERVICE"

    const-string v0, "com.google.android.gms.fido.fido2.privileged.START"

    invoke-static {p0, v0}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xc65d40

    return p0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService"

    return-object p0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.fido.fido2.privileged.START"

    return-object p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
