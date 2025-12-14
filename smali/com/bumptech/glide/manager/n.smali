.class public final Lcom/bumptech/glide/manager/n;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/manager/n;->a:I

    iput-object p2, p0, Lcom/bumptech/glide/manager/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/manager/n;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void

    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/manager/m;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/m;-><init>(Lcom/bumptech/glide/manager/n;Z)V

    invoke-static {}, Ll4/l;->f()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    iget v0, p0, Lcom/bumptech/glide/manager/n;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void

    :pswitch_0
    const-string v0, "network"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "capabilities"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    sget-object v0, Lm3/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network capabilities changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/bumptech/glide/manager/n;->b:Ljava/lang/Object;

    check-cast p0, Lm3/g;

    iget-object p1, p0, Lm3/g;->f:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lm3/h;->a(Landroid/net/ConnectivityManager;)Lk3/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm3/e;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/manager/n;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "network"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    sget-object v0, Lm3/h;->a:Ljava/lang/String;

    const-string v1, "Network connection lost"

    invoke-virtual {p1, v0, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/bumptech/glide/manager/n;->b:Ljava/lang/Object;

    check-cast p0, Lm3/g;

    iget-object p1, p0, Lm3/g;->f:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lm3/h;->a(Landroid/net/ConnectivityManager;)Lk3/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm3/e;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/manager/m;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/m;-><init>(Lcom/bumptech/glide/manager/n;Z)V

    invoke-static {}, Ll4/l;->f()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
