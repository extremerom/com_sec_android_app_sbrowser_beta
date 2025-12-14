.class public Lcom/google/api/client/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/common/io/e;->c:Lcom/google/common/io/c;

    invoke-virtual {v0, p0}, Lcom/google/common/io/e;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/common/io/d;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/common/io/e;->d:Lcom/google/common/io/c;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/io/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    throw v0
.end method

.method public static decodeBase64([B)[B
    .locals 0

    invoke-static {p0}, Lcom/google/api/client/util/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([B)[B
    .locals 0

    invoke-static {p0}, Lcom/google/api/client/util/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/common/io/e;->c:Lcom/google/common/io/c;

    invoke-virtual {v0, p0}, Lcom/google/common/io/e;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 0

    invoke-static {p0}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/common/io/e;->d:Lcom/google/common/io/c;

    iget-object v2, v1, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/common/io/c;

    iget-object v1, v1, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    invoke-direct {v2, v1, v0}, Lcom/google/common/io/c;-><init>(Lcom/google/common/io/a;Ljava/lang/Character;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/common/io/e;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
