.class public final LJ2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ2/z;->a:I

    iput-object p2, p0, LJ2/z;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, LJ2/z;->b:Ljava/lang/Object;

    iget v1, p0, LJ2/z;->a:I

    packed-switch v1, :pswitch_data_0

    sget p0, LS8/b;->a:I

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.scloud.rpc.ISamsungCloudRPC"

    invoke-interface {p2, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, LS8/c;

    if-eqz p1, :cond_1

    check-cast p0, LS8/c;

    goto :goto_0

    :cond_1
    new-instance p0, LS8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LS8/a;->a:Landroid/os/IBinder;

    :goto_0
    check-cast v0, Lcom/samsung/android/scloud/lib/setting/p;

    iput-object p0, v0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    iget-object p0, v0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    check-cast p0, LS8/d;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, LS8/d;->onBind(Z)V

    return-void

    :pswitch_0
    check-cast v0, LQ6/n;

    iget-object v1, v0, LQ6/n;->b:LQ6/i;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v1, v2, p1}, LQ6/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LQ6/m;

    invoke-direct {p1, p0, p2}, LQ6/m;-><init>(LJ2/z;Landroid/os/IBinder;)V

    invoke-virtual {v0}, LQ6/n;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "service"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, LJ2/B;->b:I

    sget-object p0, LJ2/l;->d:Ljava/lang/String;

    invoke-interface {p2, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p0, LJ2/l;

    if-eqz p1, :cond_2

    check-cast p0, LJ2/l;

    goto :goto_1

    :cond_2
    new-instance p0, LJ2/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJ2/k;->a:Landroid/os/IBinder;

    :goto_1
    check-cast v0, LJ2/A;

    iput-object p0, v0, LJ2/A;->g:LJ2/l;

    :try_start_0
    iget-object p1, v0, LJ2/A;->j:LJ2/x;

    iget-object p2, v0, LJ2/A;->a:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, LJ2/l;->b0(LJ2/j;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, LJ2/A;->f:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "ROOM"

    const-string p2, "Cannot register multi-instance invalidation callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget v0, p0, LJ2/z;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJ2/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/p;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, LJ2/z;->b:Ljava/lang/Object;

    check-cast v0, LQ6/n;

    iget-object v1, v0, LQ6/n;->b:LQ6/i;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v1, v2, p1}, LQ6/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LQ6/l;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p0}, LQ6/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, LQ6/n;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ2/z;->b:Ljava/lang/Object;

    check-cast p0, LJ2/A;

    const/4 p1, 0x0

    iput-object p1, p0, LJ2/A;->g:LJ2/l;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
