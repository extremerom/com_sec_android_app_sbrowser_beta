.class public final Lcom/google/crypto/tink/shaded/protobuf/L;
.super Lcom/google/crypto/tink/shaded/protobuf/M;
.source "SourceFile"


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/D;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/b;->a:Z

    return-void
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;J)V
    .locals 3

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, p3, p4, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/D;

    invoke-virtual {p0, p3, p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/D;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_1

    if-lez v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/b;

    iget-boolean v2, v2, Lcom/google/crypto/tink/shaded/protobuf/b;->a:Z

    if-nez v2, :cond_0

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/D;->a(I)Lcom/google/crypto/tink/shaded/protobuf/D;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez p2, :cond_2

    move-object p0, v0

    :cond_2
    invoke-static {p3, p4, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(JLjava/lang/Object;)Ljava/util/List;
    .locals 1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/D;

    move-object v0, p0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/b;

    iget-boolean v0, v0, Lcom/google/crypto/tink/shaded/protobuf/b;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/D;->a(I)Lcom/google/crypto/tink/shaded/protobuf/D;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method
