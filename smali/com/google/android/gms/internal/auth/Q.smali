.class public final Lcom/google/android/gms/internal/auth/Q;
.super Lcom/google/android/gms/internal/auth/S;
.source "SourceFile"


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/J;

    check-cast p0, Lcom/google/android/gms/internal/auth/y;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/auth/y;->a:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;J)V
    .locals 3

    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, p3, p4, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/J;

    invoke-virtual {p0, p3, p4, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/J;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_1

    if-lez v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/auth/y;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/auth/y;->a:Z

    if-nez v2, :cond_0

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/auth/J;->o(I)Lcom/google/android/gms/internal/auth/J;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    invoke-static {p3, p4, p1, p0}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
