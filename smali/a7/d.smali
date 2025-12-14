.class public final La7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV6/i;


# instance fields
.field public final a:Lo3/t;

.field public final b:[B


# direct methods
.method public constructor <init>(Lo3/t;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    iput-object v1, p0, La7/d;->b:[B

    iput-object p1, p0, La7/d;->a:Lo3/t;

    return-void
.end method


# virtual methods
.method public final a([B[B)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget-object v2, p0, La7/d;->a:Lo3/t;

    invoke-virtual {v2, v0}, Lo3/t;->j([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV6/j;

    :try_start_0
    iget-object v4, v3, LV6/j;->d:Lc7/N0;

    sget-object v5, Lc7/N0;->LEGACY:Lc7/N0;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v3, LV6/j;->a:Ljava/lang/Object;

    if-eqz v4, :cond_0

    :try_start_1
    check-cast v3, LV6/i;

    iget-object v4, p0, La7/d;->b:[B

    filled-new-array {p2, v4}, [[B

    move-result-object v4

    invoke-static {v4}, LG5/u2;->d([[B)[B

    move-result-object v4

    invoke-interface {v3, v1, v4}, LV6/i;->a([B[B)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    check-cast v3, LV6/i;

    invoke-interface {v3, v1, p2}, LV6/i;->a([B[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :goto_2
    sget-object v4, La7/e;->a:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tag prefix matches a key, but cannot verify: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, LV6/c;->a:[B

    invoke-virtual {v2, p0}, Lo3/t;->j([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV6/j;

    :try_start_2
    iget-object v0, v0, LV6/j;->a:Ljava/lang/Object;

    check-cast v0, LV6/i;

    invoke-interface {v0, p1, p2}, LV6/i;->a([B[B)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid MAC"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "tag too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B)[B
    .locals 3

    iget-object v0, p0, La7/d;->a:Lo3/t;

    iget-object v1, v0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v1, LV6/j;

    iget-object v1, v1, LV6/j;->d:Lc7/N0;

    sget-object v2, Lc7/N0;->LEGACY:Lc7/N0;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v1, LV6/j;

    invoke-virtual {v1}, LV6/j;->a()[B

    move-result-object v1

    iget-object v0, v0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, LV6/j;

    iget-object v0, v0, LV6/j;->a:Ljava/lang/Object;

    check-cast v0, LV6/i;

    iget-object p0, p0, La7/d;->b:[B

    filled-new-array {p1, p0}, [[B

    move-result-object p0

    invoke-static {p0}, LG5/u2;->d([[B)[B

    move-result-object p0

    invoke-interface {v0, p0}, LV6/i;->b([B)[B

    move-result-object p0

    filled-new-array {v1, p0}, [[B

    move-result-object p0

    invoke-static {p0}, LG5/u2;->d([[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, v0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, LV6/j;

    invoke-virtual {p0}, LV6/j;->a()[B

    move-result-object p0

    iget-object v0, v0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, LV6/j;

    iget-object v0, v0, LV6/j;->a:Ljava/lang/Object;

    check-cast v0, LV6/i;

    invoke-interface {v0, p1}, LV6/i;->b([B)[B

    move-result-object p1

    filled-new-array {p0, p1}, [[B

    move-result-object p0

    invoke-static {p0}, LG5/u2;->d([[B)[B

    move-result-object p0

    return-object p0
.end method
