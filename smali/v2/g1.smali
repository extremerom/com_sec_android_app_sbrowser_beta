.class public abstract Lv2/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final invalidateCallbackTracker:Lv2/J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/J;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv2/J;

    invoke-direct {v0}, Lv2/J;-><init>()V

    iput-object v0, p0, Lv2/g1;->invalidateCallbackTracker:Lv2/J;

    return-void
.end method


# virtual methods
.method public final getInvalidateCallbackCount$paging_common_release()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lv2/g1;->invalidateCallbackTracker:Lv2/J;

    iget-object p0, p0, Lv2/J;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getJumpingSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKeyReuseSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getRefreshKey(Lv2/h1;)Ljava/lang/Object;
.end method

.method public final invalidate()V
    .locals 3

    iget-object v0, p0, Lv2/g1;->invalidateCallbackTracker:Lv2/J;

    invoke-virtual {v0}, Lv2/J;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "Paging"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalidated PagingSource "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "message"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public abstract load(Lv2/c1;Lib/c;)Ljava/lang/Object;
.end method

.method public final registerInvalidatedCallback(Lsb/a;)V
    .locals 3
    .param p1    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onInvalidatedCallback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv2/g1;->invalidateCallbackTracker:Lv2/J;

    iget-object v0, p0, Lv2/J;->a:Lsb/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lv2/J;->a()Z

    :cond_0
    iget-boolean v0, p0, Lv2/J;->d:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lv2/J;->b:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v2, p0, Lv2/J;->d:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lv2/J;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final unregisterInvalidatedCallback(Lsb/a;)V
    .locals 1
    .param p1    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onInvalidatedCallback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv2/g1;->invalidateCallbackTracker:Lv2/J;

    iget-object v0, p0, Lv2/J;->b:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p0, p0, Lv2/J;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
