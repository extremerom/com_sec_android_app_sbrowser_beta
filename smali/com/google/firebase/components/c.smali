.class public interface abstract Lcom/google/firebase/components/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/c;->f(Lcom/google/firebase/components/r;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Lcom/google/firebase/components/r;)LC7/a;
.end method

.method public d(Lcom/google/firebase/components/r;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/firebase/components/c;->e(Lcom/google/firebase/components/r;)LC7/a;

    move-result-object p0

    invoke-interface {p0}, LC7/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract e(Lcom/google/firebase/components/r;)LC7/a;
.end method

.method public f(Lcom/google/firebase/components/r;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/firebase/components/c;->c(Lcom/google/firebase/components/r;)LC7/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, LC7/a;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/Class;)LC7/a;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/c;->c(Lcom/google/firebase/components/r;)LC7/a;

    move-result-object p0

    return-object p0
.end method
