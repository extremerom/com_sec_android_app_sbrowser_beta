.class public final LH/s;
.super Lc/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:LH/t;


# direct methods
.method public constructor <init>(LH/t;)V
    .locals 0

    iput-object p1, p0, LH/s;->b:LH/t;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object p1, Lc/e;->f:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final A(Lc/b;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2

    new-instance v0, LH/y;

    invoke-static {p3}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v0, p2, p3, p4}, LH/t;->mayLaunchUrl(LH/y;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final r0()Z
    .locals 2

    const-wide/16 v0, 0x0

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v0, v1}, LH/t;->warmup(J)Z

    move-result p0

    return p0
.end method

.method public final u0(LH/j;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LH/s;->w0(Lc/b;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public final w0(Lc/b;Landroid/app/PendingIntent;)Z
    .locals 4

    new-instance v0, LH/y;

    invoke-direct {v0, p1, p2}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, LH/r;

    invoke-direct {v1, p0, v0}, LH/r;-><init>(LH/s;LH/y;)V

    iget-object v2, p0, LH/s;->b:LH/t;

    iget-object v2, v2, LH/t;->mDeathRecipientMap:LN/A;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, LH/s;->b:LH/t;

    iget-object v3, v3, LH/t;->mDeathRecipientMap:LN/A;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v0}, LH/t;->newSession(LH/y;)Z

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p2
.end method
