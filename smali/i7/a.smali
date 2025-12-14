.class public final Li7/a;
.super Li7/z;
.source "SourceFile"


# virtual methods
.method public final a(Li7/f;)V
    .locals 0

    iget-object p0, p1, Li7/f;->a:Li7/y;

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Li7/q;

    return-object p0
.end method

.method public final f(Li7/z;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "uninternable instance"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Li7/y;I)V
    .locals 0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Li7/z;->m(I)V

    return-void
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 2

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/z;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " annotations directory"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "  class_annotations_off: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "  fields_size:           "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "  methods_size:          "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "  parameters_size:       "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v0}, Ln7/b;->j(I)V

    invoke-virtual {p2, v0}, Ln7/b;->j(I)V

    invoke-virtual {p2, v0}, Ln7/b;->j(I)V

    invoke-virtual {p2, v0}, Ln7/b;->j(I)V

    return-void
.end method
