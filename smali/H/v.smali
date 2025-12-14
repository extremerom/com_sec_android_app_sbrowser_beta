.class public abstract LH/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mApplicationContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, LH/v;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;LH/k;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LH/v;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v0, LH/u;

    sget v1, Lc/d;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lc/e;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lc/e;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Lc/e;

    goto :goto_0

    :cond_1
    new-instance v1, Lc/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lc/c;->a:Landroid/os/IBinder;

    move-object p2, v1

    :goto_0
    invoke-direct {v0, p2, p1}, LH/k;-><init>(Lc/e;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, LH/v;->onCustomTabsServiceConnected(Landroid/content/ComponentName;LH/k;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Custom Tabs Service connected before an applicationcontext has been provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iput-object p1, p0, LH/v;->mApplicationContext:Landroid/content/Context;

    return-void
.end method
