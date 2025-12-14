.class public abstract LG5/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lgb/c;)Lgb/c;
    .locals 1

    invoke-virtual {p0}, Lgb/c;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgb/c;->c:Z

    iget v0, p0, Lgb/c;->b:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lgb/c;->d:Lgb/c;

    :goto_0
    return-object p0
.end method

.method public static b()Lgb/c;
    .locals 2

    new-instance v0, Lgb/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lgb/c;-><init>(I)V

    return-object v0
.end method

.method public static c(Landroid/content/pm/Signature;)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
