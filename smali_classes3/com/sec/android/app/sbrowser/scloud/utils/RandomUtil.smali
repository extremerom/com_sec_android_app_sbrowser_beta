.class public Lcom/sec/android/app/sbrowser/scloud/utils/RandomUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static generateCTID(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateRandomToken(I)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :catch_1
    :try_start_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :goto_0
    new-array v1, p0, [C

    :cond_0
    :goto_1
    add-int/lit8 v2, p0, -0x1

    if-eqz p0, :cond_7

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const/16 v4, 0x80

    const v5, 0xd800

    const v6, 0xdc00

    if-lt v3, v6, :cond_3

    const v7, 0xdfff

    if-gt v3, v7, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    aput-char v3, v1, v2

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    int-to-char v2, v2

    aput-char v2, v1, p0

    goto :goto_1

    :cond_3
    if-lt v3, v5, :cond_5

    const v5, 0xdb7f

    if-gt v3, v5, :cond_5

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v1, v2

    add-int/lit8 p0, p0, -0x2

    aput-char v3, v1, p0

    goto :goto_1

    :cond_5
    const v4, 0xdb80

    if-lt v3, v4, :cond_6

    const v4, 0xdbff

    if-gt v3, v4, :cond_6

    goto :goto_1

    :cond_6
    aput-char v3, v1, v2

    move p0, v2

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_2
    const-string v0, "RandomUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
