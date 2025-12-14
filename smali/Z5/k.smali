.class public final LZ5/k;
.super LA5/f;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public p:LZ5/l;

.field public q:LZ5/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.google.android.gms.wearable.internal.IChannelStreamCallbacks"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LA5/f;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LZ5/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final y0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-static {p2}, LK5/a;->b(Landroid/os/Parcel;)V

    iget-object p1, p0, LZ5/k;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, LZ5/k;->p:LZ5/l;

    new-instance v0, LZ5/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LZ5/d;-><init>(I)V

    iput-object v0, p0, LZ5/k;->q:LZ5/d;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, LZ5/l;->g(LZ5/d;)V

    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final z0(LZ5/l;)V
    .locals 1

    iget-object v0, p0, LZ5/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LZ5/k;->p:LZ5/l;

    iget-object p0, p0, LZ5/k;->q:LZ5/d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, LZ5/l;->g(LZ5/d;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
