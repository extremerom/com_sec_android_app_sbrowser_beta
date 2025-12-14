.class public final Lcom/google/android/gms/internal/clearcut/G;
.super Lcom/google/android/gms/internal/clearcut/E;
.source "SourceFile"


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/z;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/h;->a:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;J)V
    .locals 3

    invoke-static {p3, p4, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/z;

    invoke-static {p3, p4, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/clearcut/z;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/clearcut/h;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/clearcut/h;->a:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/clearcut/z;->G(I)Lcom/google/android/gms/internal/clearcut/z;

    move-result-object p0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p0

    :cond_2
    invoke-static {p3, p4, p1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
