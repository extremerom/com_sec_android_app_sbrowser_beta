.class public final Lm3/g;
.super Lm3/e;
.source "SourceFile"


# instance fields
.field public final f:Landroid/net/ConnectivityManager;

.field public final g:Lcom/bumptech/glide/manager/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr3/a;)V
    .locals 1

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lm3/e;-><init>(Landroid/content/Context;Lr3/a;)V

    iget-object p1, p0, Lm3/e;->b:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lm3/g;->f:Landroid/net/ConnectivityManager;

    new-instance p1, Lcom/bumptech/glide/manager/n;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/bumptech/glide/manager/n;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lm3/g;->g:Lcom/bumptech/glide/manager/n;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm3/g;->f:Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lm3/h;->a(Landroid/net/ConnectivityManager;)Lk3/d;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 4

    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lm3/h;->a:Ljava/lang/String;

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lm3/g;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lm3/g;->g:Lcom/bumptech/glide/manager/n;

    invoke-static {v1, p0}, Lp3/k;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lm3/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lm3/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final d()V
    .locals 4

    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lm3/h;->a:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lm3/g;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lm3/g;->g:Lcom/bumptech/glide/manager/n;

    invoke-static {v1, p0}, Lp3/i;->c(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lm3/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lm3/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
