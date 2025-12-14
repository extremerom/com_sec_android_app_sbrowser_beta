.class public final LY6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV6/d;


# instance fields
.field public a:Lo3/t;


# virtual methods
.method public final a([B[B)[B
    .locals 1

    iget-object p0, p0, LY6/b;->a:Lo3/t;

    iget-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, LV6/j;

    invoke-virtual {v0}, LV6/j;->a()[B

    move-result-object v0

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, LV6/j;

    iget-object p0, p0, LV6/j;->a:Ljava/lang/Object;

    check-cast p0, LV6/d;

    invoke-interface {p0, p1, p2}, LV6/d;->a([B[B)[B

    move-result-object p0

    filled-new-array {v0, p0}, [[B

    move-result-object p0

    invoke-static {p0}, LG5/u2;->d([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final b([B[B)[B
    .locals 6

    array-length v0, p1

    iget-object p0, p0, LY6/b;->a:Lo3/t;

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v0}, Lo3/t;->j([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV6/j;

    :try_start_0
    iget-object v2, v2, LV6/j;->a:Ljava/lang/Object;

    check-cast v2, LV6/d;

    invoke-interface {v2, v1, p2}, LV6/d;->b([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    sget-object v3, LY6/c;->a:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ciphertext prefix matches a key, but cannot decrypt: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, LV6/c;->a:[B

    invoke-virtual {p0, v0}, Lo3/t;->j([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV6/j;

    :try_start_1
    iget-object v0, v0, LV6/j;->a:Ljava/lang/Object;

    check-cast v0, LV6/d;

    invoke-interface {v0, p1, p2}, LV6/d;->b([B[B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "decryption failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
