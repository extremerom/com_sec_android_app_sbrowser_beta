.class public final LI/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Intent;

.field public final c:LI/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;LI/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LI/i;->a:Landroid/content/Context;

    iput-object p2, p0, LI/i;->b:Landroid/content/Intent;

    iput-object p3, p0, LI/i;->c:LI/a;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, LI/i;->c:LI/a;

    iget-object v0, p0, LI/i;->a:Landroid/content/Context;

    :try_start_0
    iget-object p0, p0, LI/i;->b:Landroid/content/Intent;

    const/16 v1, 0x1001

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not bind to the service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TWAConnectionPool"

    const-string v0, "SecurityException while binding."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Exception;

    if-eqz p1, :cond_2

    iget-object p0, p0, LI/i;->c:LI/a;

    iget-object v0, p0, LI/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK0/i;

    const/4 v3, 0x1

    iput-boolean v3, v2, LK0/i;->d:Z

    iget-object v3, v2, LK0/i;->b:LK0/l;

    if-eqz v3, :cond_0

    iget-object v3, v3, LK0/l;->b:LK0/k;

    invoke-virtual {v3, p1}, LK0/h;->n(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, v2, LK0/i;->a:Ljava/lang/Object;

    iput-object v3, v2, LK0/i;->b:LK0/l;

    iput-object v3, v2, LK0/i;->c:LK0/m;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LI/a;->a:LGa/d;

    invoke-virtual {v0}, LGa/d;->run()V

    const/4 v0, 0x3

    iput v0, p0, LI/a;->p:I

    iput-object p1, p0, LI/a;->s:Ljava/lang/Exception;

    :cond_2
    return-void
.end method
