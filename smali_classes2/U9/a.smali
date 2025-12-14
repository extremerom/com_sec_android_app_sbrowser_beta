.class public final LU9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:LJ7/c;

.field public final synthetic b:LT2/c;


# direct methods
.method public constructor <init>(LT2/c;LJ7/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU9/a;->b:LT2/c;

    iput-object p2, p0, LU9/a;->a:LJ7/c;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object p1, p0, LU9/a;->b:LT2/c;

    const/4 v0, 0x1

    :try_start_0
    sget v1, LKa/b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.sec.android.diagmonagent.sa.IDMAInterface"

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, LKa/c;

    if-eqz v3, :cond_1

    move-object p2, v2

    check-cast p2, LKa/c;

    goto :goto_0

    :cond_1
    new-instance v2, LKa/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p2, v2, LKa/a;->a:Landroid/os/IBinder;

    move-object p2, v2

    :goto_0
    iput-object p2, p1, LT2/c;->d:Ljava/lang/Object;

    check-cast p2, LKa/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p2, p2, LKa/a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "DMABinder"

    if-nez p2, :cond_2

    :try_start_4
    invoke-virtual {p1}, LT2/c;->k()V

    iput-boolean v0, p1, LT2/c;->b:Z

    const-string p0, "Token failed"

    invoke-static {v2, p0}, LG5/F3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    iput-boolean v1, p1, LT2/c;->b:Z

    iget-object p0, p0, LU9/a;->a:LJ7/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LJ7/c;->b:Ljava/lang/Object;

    check-cast p0, LU9/b;

    invoke-virtual {p0}, LU9/b;->f()V

    invoke-virtual {p0}, LU9/b;->e()V

    const-string p0, "DMA connected"

    invoke-static {v2, p0}, LG5/F3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p1}, LT2/c;->k()V

    iput-boolean v0, p1, LT2/c;->b:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "failed to connect binder"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->j(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, LU9/a;->b:LT2/c;

    const/4 p1, 0x0

    iput-object p1, p0, LT2/c;->d:Ljava/lang/Object;

    return-void
.end method
