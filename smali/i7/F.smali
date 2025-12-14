.class public final Li7/F;
.super Li7/n;
.source "SourceFile"


# virtual methods
.method public final a(Li7/f;)V
    .locals 2

    iget-object p1, p1, Li7/f;->e:Li7/B;

    iget-object p0, p0, Li7/n;->b:Ll7/u;

    iget-object v0, p0, Ll7/u;->b:Ll7/t;

    if-nez v0, :cond_0

    new-instance v0, Ll7/t;

    iget-object v1, p0, Ll7/u;->a:Lm7/c;

    iget-object v1, v1, Lm7/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ll7/t;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ll7/u;->b:Ll7/t;

    :cond_0
    iget-object p0, p0, Ll7/u;->b:Ll7/t;

    invoke-virtual {p1, p0}, Li7/B;->o(Ll7/t;)V

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_TYPE_ID_ITEM:Li7/q;

    return-object p0
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final e(Li7/f;Ln7/b;)V
    .locals 3

    iget-object v0, p0, Li7/n;->b:Ll7/u;

    iget-object v1, v0, Ll7/u;->b:Ll7/t;

    if-nez v1, :cond_0

    new-instance v1, Ll7/t;

    iget-object v2, v0, Ll7/u;->a:Lm7/c;

    iget-object v2, v2, Lm7/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ll7/t;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Ll7/u;->b:Ll7/t;

    :cond_0
    iget-object v0, v0, Ll7/u;->b:Ll7/t;

    iget-object p1, p1, Li7/f;->e:Li7/B;

    invoke-virtual {p1, v0}, Li7/B;->l(Ll7/t;)I

    move-result p1

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/o;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ll7/t;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "  descriptor_idx: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2, p1}, Ln7/b;->j(I)V

    return-void
.end method
