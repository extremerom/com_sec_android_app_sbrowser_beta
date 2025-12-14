.class public abstract LH6/n;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDismissed(Ljava/lang/Object;I)V
.end method

.method public onShown(LH6/o;)V
    .locals 0

    return-void
.end method

.method public bridge onShown(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LH6/o;

    invoke-virtual {p0, p1}, LH6/n;->onShown(LH6/o;)V

    return-void
.end method
