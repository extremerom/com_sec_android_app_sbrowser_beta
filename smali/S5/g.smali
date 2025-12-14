.class public abstract LS5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public onDone()V
    .locals 0

    return-void
.end method

.method public onMissing(LS5/a;)V
    .locals 0
    .param p1    # LS5/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS5/a;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract onNewItem(ILjava/lang/Object;)V
.end method

.method public onUpdate(LS5/a;Ljava/lang/Object;)V
    .locals 0
    .param p1    # LS5/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS5/a;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method
