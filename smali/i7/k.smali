.class public final Li7/k;
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

    check-cast p0, Ll7/h;

    invoke-virtual {p0}, Ll7/h;->getType()Lm7/c;

    move-result-object p0

    iget-object p1, p1, Li7/f;->f:Li7/B;

    invoke-virtual {p1, p0}, Li7/B;->q(Lm7/c;)V

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_FIELD_ID_ITEM:Li7/q;

    return-object p0
.end method

.method public final k(Li7/f;)I
    .locals 0

    iget-object p1, p1, Li7/f;->f:Li7/B;

    iget-object p0, p0, Li7/s;->c:Ll7/p;

    check-cast p0, Ll7/h;

    invoke-virtual {p0}, Ll7/h;->getType()Lm7/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Li7/B;->n(Lm7/c;)I

    move-result p0

    return p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    const-string p0, "type_idx"

    return-object p0
.end method
