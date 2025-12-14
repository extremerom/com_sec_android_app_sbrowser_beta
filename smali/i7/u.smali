.class public final Li7/u;
.super Li7/s;
.source "SourceFile"


# virtual methods
.method public final a(Li7/f;)V
    .locals 2

    iget-object v0, p1, Li7/f;->f:Li7/B;

    iget-object v1, p0, Li7/n;->b:Ll7/u;

    invoke-virtual {v0, v1}, Li7/B;->p(Ll7/u;)V

    iget-object p0, p0, Li7/s;->c:Ll7/p;

    iget-object v0, p0, Ll7/p;->b:Ll7/r;

    iget-object v0, v0, Ll7/r;->a:Ll7/t;

    iget-object v1, p1, Li7/f;->e:Li7/B;

    invoke-virtual {v1, v0}, Li7/B;->o(Ll7/t;)V

    check-cast p0, Ll7/q;

    iget-object p0, p0, Ll7/q;->c:Lm7/a;

    iget-object p1, p1, Li7/f;->g:Li7/B;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Li7/C;->g()V

    iget-object p1, p1, Li7/B;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/A;

    if-nez v0, :cond_0

    new-instance v0, Li7/A;

    invoke-direct {v0, p0}, Li7/A;-><init>(Lm7/a;)V

    invoke-virtual {p1, p0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "prototype == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_METHOD_ID_ITEM:Li7/q;

    return-object p0
.end method

.method public final k(Li7/f;)I
    .locals 0

    iget-object p1, p1, Li7/f;->g:Li7/B;

    iget-object p0, p0, Li7/s;->c:Ll7/p;

    check-cast p0, Ll7/q;

    iget-object p0, p0, Ll7/q;->c:Lm7/a;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Li7/C;->f()V

    iget-object p1, p1, Li7/B;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/A;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li7/o;->f()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "prototype == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    const-string p0, "proto_idx"

    return-object p0
.end method
