.class public final La7/a;
.super LF3/f;
.source "SourceFile"


# virtual methods
.method public final G0(Lcom/google/crypto/tink/shaded/protobuf/a;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lc7/f;

    invoke-static {}, Lc7/c;->s()Lc7/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v0, Lc7/c;

    invoke-static {v0}, Lc7/c;->m(Lc7/c;)V

    invoke-virtual {p1}, Lc7/f;->m()I

    move-result v0

    invoke-static {v0}, Ld7/p;->a(I)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/c;

    invoke-static {v1, v0}, Lc7/c;->n(Lc7/c;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {p1}, Lc7/f;->n()Lc7/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v0, Lc7/c;

    invoke-static {v0, p1}, Lc7/c;->o(Lc7/c;Lc7/h;)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/c;

    return-object p0
.end method

.method public final O0(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/a;
    .locals 0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/f;->o(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/f;

    move-result-object p0

    return-object p0
.end method

.method public final R0(Lcom/google/crypto/tink/shaded/protobuf/a;)V
    .locals 0

    check-cast p1, Lc7/f;

    invoke-virtual {p1}, Lc7/f;->n()Lc7/h;

    move-result-object p0

    invoke-static {p0}, LW6/f;->w(Lc7/h;)V

    invoke-virtual {p1}, Lc7/f;->m()I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
