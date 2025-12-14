.class public abstract LH/t;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private mBinder:Lc/d;

.field final mDeathRecipientMap:LN/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN/A;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, LN/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, LH/t;->mDeathRecipientMap:LN/A;

    new-instance v0, LH/s;

    invoke-direct {v0, p0}, LH/s;-><init>(LH/t;)V

    iput-object v0, p0, LH/t;->mBinder:Lc/d;

    return-void
.end method


# virtual methods
.method public cleanUpSession(LH/y;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LH/t;->mDeathRecipientMap:LN/A;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p1, LH/y;->a:Lc/b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v2, p0, LH/t;->mDeathRecipientMap:LN/A;

    invoke-virtual {v2, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, LH/t;->mDeathRecipientMap:LN/A;

    invoke-virtual {p0, p1}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method public abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public isEngagementSignalsApiAvailable(LH/y;Landroid/os/Bundle;)Z
    .locals 0
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public abstract mayLaunchUrl(LH/y;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
.end method

.method public abstract newSession(LH/y;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, LH/t;->mBinder:Lc/d;

    return-object p0
.end method

.method public abstract postMessage(LH/y;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract receiveFile(LH/y;Landroid/net/Uri;ILandroid/os/Bundle;)Z
.end method

.method public abstract requestPostMessageChannel(LH/y;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public setEngagementSignalsCallback(LH/y;LH/z;Landroid/os/Bundle;)Z
    .locals 0
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LH/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public abstract updateVisuals(LH/y;Landroid/os/Bundle;)Z
.end method

.method public abstract validateRelationship(LH/y;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract warmup(J)Z
.end method
