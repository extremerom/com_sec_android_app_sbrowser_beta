.class public final LD5/k;
.super Lcom/google/android/gms/common/internal/i;
.source "SourceFile"


# instance fields
.field public final a:LN/A;

.field public final b:LN/A;

.field public final p:LN/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    new-instance p1, LN/A;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LN/A;-><init>(I)V

    iput-object p1, p0, LD5/k;->a:LN/A;

    new-instance p1, LN/A;

    invoke-direct {p1, p2}, LN/A;-><init>(I)V

    iput-object p1, p0, LD5/k;->b:LN/A;

    new-instance p1, LN/A;

    invoke-direct {p1, p2}, LN/A;-><init>(I)V

    iput-object p1, p0, LD5/k;->p:LN/A;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 7

    sget-object v0, LL5/e;->a:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    iget-object v5, v4, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    const-string v6, "location_updates_with_callback"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/Feature;->b()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LD5/w;

    if-eqz v1, :cond_1

    move-object p0, v0

    check-cast p0, LD5/w;

    goto :goto_0

    :cond_1
    new-instance v0, LD5/w;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0

    sget-object p0, LL5/e;->b:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xb2c988

    return p0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object p0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object p0
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/f;->onConnectionSuspended(I)V

    iget-object p1, p0, LD5/k;->a:LN/A;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LD5/k;->a:LN/A;

    invoke-virtual {v0}, LN/A;->clear()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, LD5/k;->b:LN/A;

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, LD5/k;->b:LN/A;

    invoke-virtual {p1}, LN/A;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, LD5/k;->p:LN/A;

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, LD5/k;->p:LN/A;

    invoke-virtual {p0}, LN/A;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
