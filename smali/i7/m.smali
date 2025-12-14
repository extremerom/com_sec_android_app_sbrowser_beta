.class public final Li7/m;
.super Li7/o;
.source "SourceFile"


# virtual methods
.method public final a(Li7/f;)V
    .locals 0

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_HEADER_ITEM:Li7/q;

    return-object p0
.end method

.method public final d()I
    .locals 0

    const/16 p0, 0x70

    return p0
.end method

.method public final e(Li7/f;Ln7/b;)V
    .locals 11

    iget-object p0, p1, Li7/f;->c:Li7/y;

    invoke-virtual {p0}, Li7/C;->b()I

    move-result p0

    iget-object v0, p1, Li7/f;->a:Li7/y;

    invoke-virtual {v0}, Li7/C;->b()I

    move-result v0

    iget-object v1, p1, Li7/f;->c:Li7/y;

    invoke-virtual {v1}, Li7/C;->b()I

    move-result v2

    invoke-virtual {v1}, Li7/C;->f()V

    iget v1, v1, Li7/y;->i:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    const-string v1, "dex\n"

    const-string v3, "035"

    const-string v4, "\u0000"

    invoke-static {v1, v3, v4}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v3

    const-string v4, "file size not yet known"

    const v5, 0x12345678

    const/16 v6, 0x70

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "magic: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ll7/t;

    invoke-direct {v9, v1}, Ll7/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ll7/t;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v7, v3}, Ln7/b;->b(ILjava/lang/String;)V

    const-string v3, "checksum"

    invoke-virtual {p2, v8, v3}, Ln7/b;->b(ILjava/lang/String;)V

    const/16 v3, 0x14

    const-string v9, "signature"

    invoke-virtual {p2, v3, v9}, Ln7/b;->b(ILjava/lang/String;)V

    iget v3, p1, Li7/f;->o:I

    if-ltz v3, :cond_0

    invoke-static {v3}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "file_size:       "

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v8, v3}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v6}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "header_size:     "

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v8, v3}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v5}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "endian_tag:      "

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v8, v3}, Ln7/b;->b(ILjava/lang/String;)V

    const-string v3, "link_size:       0"

    invoke-virtual {p2, v8, v3}, Ln7/b;->b(ILjava/lang/String;)V

    const-string v3, "link_off:        0"

    invoke-virtual {p2, v8, v3}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "map_off:         "

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v8, v3}, Ln7/b;->b(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_2

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p2, v10}, Ln7/b;->i(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Ln7/b;->n(I)V

    iget v1, p1, Li7/f;->o:I

    if-ltz v1, :cond_12

    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    invoke-virtual {p2, v6}, Ln7/b;->j(I)V

    invoke-virtual {p2, v5}, Ln7/b;->j(I)V

    invoke-virtual {p2, v7}, Ln7/b;->n(I)V

    invoke-virtual {p2, p0}, Ln7/b;->j(I)V

    iget-object p0, p1, Li7/f;->e:Li7/B;

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object v1, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_3

    move p0, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Li7/C;->b()I

    move-result p0

    :goto_2
    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "string_ids_size: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "string_ids_off:  "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    invoke-virtual {p2, p0}, Ln7/b;->j(I)V

    iget-object p0, p1, Li7/f;->f:Li7/B;

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object v1, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_5

    move p0, v3

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Li7/C;->b()I

    move-result p0

    :goto_3
    const/high16 v4, 0x10000

    if-gt v1, v4, :cond_11

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type_ids_size:   "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v8, v5}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type_ids_off:    "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v8, v5}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    invoke-virtual {p2, p0}, Ln7/b;->j(I)V

    iget-object p0, p1, Li7/f;->g:Li7/B;

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object v1, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_7

    move p0, v3

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Li7/C;->b()I

    move-result p0

    :goto_4
    if-gt v1, v4, :cond_10

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "proto_ids_size:  "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "proto_ids_off:   "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_8
    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    invoke-virtual {p2, p0}, Ln7/b;->j(I)V

    iget-object p0, p1, Li7/f;->h:Li7/l;

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object v1, p0, Li7/l;->f:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_9

    move p0, v3

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Li7/C;->b()I

    move-result p0

    :goto_5
    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "field_ids_size:  "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "field_ids_off:   "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    invoke-virtual {p2, p0}, Ln7/b;->j(I)V

    iget-object p0, p1, Li7/f;->i:Li7/v;

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object v1, p0, Li7/v;->f:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_b

    move p0, v3

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Li7/C;->b()I

    move-result p0

    :goto_6
    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "method_ids_size: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "method_ids_off:  "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_c
    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    invoke-virtual {p2, p0}, Ln7/b;->j(I)V

    iget-object p0, p1, Li7/f;->j:Li7/d;

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object p1, p0, Li7/d;->f:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Li7/C;->b()I

    move-result v3

    :goto_7
    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "class_defs_size: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v8, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v3}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "class_defs_off:  "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v8, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_e
    invoke-virtual {p2, p1}, Ln7/b;->j(I)V

    invoke-virtual {p2, v3}, Ln7/b;->j(I)V

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v2}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "data_size:       "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v8, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "data_off:        "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v8, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_f
    invoke-virtual {p2, v2}, Ln7/b;->j(I)V

    invoke-virtual {p2, v0}, Ln7/b;->j(I)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "too many proto ids"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "too many type ids"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
