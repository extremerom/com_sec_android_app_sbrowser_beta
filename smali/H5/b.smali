.class public final LH5/b;
.super Lcom/google/android/gms/common/internal/i;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc5/y;Lc5/y;Lcom/google/android/gms/common/internal/h;)V
    .locals 7

    const/16 v3, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    iput-object p1, p0, LH5/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, LH5/e;

    if-eqz v0, :cond_1

    check-cast p0, LH5/e;

    goto :goto_0

    :cond_1
    new-instance p0, LH5/e;

    invoke-direct {p0, p1}, LH5/e;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xba2840

    return p0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    return-object p0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.safetynet.service.START"

    return-object p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
