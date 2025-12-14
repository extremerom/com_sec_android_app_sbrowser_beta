.class public final Lcom/google/common/util/concurrent/q;
.super Lcom/google/common/util/concurrent/r;
.source "SourceFile"


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/base/o;

    invoke-interface {p1, p2}, Lcom/google/common/base/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/common/util/concurrent/o;->g:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/o;->f:LG5/i2;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, LG5/i2;->b(Lcom/google/common/util/concurrent/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/o;->e(Lcom/google/common/util/concurrent/o;Z)V

    :cond_1
    return-void
.end method
