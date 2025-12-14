.class public abstract LG5/E3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Lhc/b;
    .locals 2

    new-instance v0, Lhc/b;

    sget-object v1, Lhc/i;->a:Lhc/c;

    sget-object v1, Lhc/i;->a:Lhc/c;

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lhc/b;
    .locals 2

    new-instance v0, Lhc/b;

    sget-object v1, Lhc/i;->a:Lhc/c;

    sget-object v1, Lhc/i;->c:Lhc/c;

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method

.method public static final c(Ljava/util/LinkedHashMap;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lfb/C;->g(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final d(Lhc/f;)Lhc/b;
    .locals 3

    new-instance v0, Lhc/b;

    sget-object v1, Lhc/i;->a:Lhc/c;

    sget-object v1, Lhc/i;->k:Lhc/b;

    iget-object v2, v1, Lhc/b;->a:Lhc/c;

    invoke-virtual {p0}, Lhc/f;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lhc/b;->f()Lhc/f;

    move-result-object v1

    invoke-virtual {v1}, Lhc/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method

.method public static final e(Ljava/lang/String;)Lhc/b;
    .locals 2

    new-instance v0, Lhc/b;

    sget-object v1, Lhc/i;->a:Lhc/c;

    sget-object v1, Lhc/i;->b:Lhc/c;

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method

.method public static final f(Lhc/b;)Lhc/b;
    .locals 3

    new-instance v0, Lhc/b;

    sget-object v1, Lhc/i;->a:Lhc/c;

    sget-object v1, Lhc/i;->a:Lhc/c;

    invoke-virtual {p0}, Lhc/b;->f()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->d()Ljava/lang/String;

    move-result-object p0

    const-string v2, "U"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%064x"

    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to hash : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->i(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
