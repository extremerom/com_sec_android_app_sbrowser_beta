.class public Lcom/sec/android/app/sbrowser/common/utils/decoder/RandomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/RandomUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public static nextInt()I
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/RandomUtils;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public static nextInt(II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    if-ltz p0, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    if-ne p0, p1, :cond_2

    return p0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/RandomUtils;->RANDOM:Ljava/util/Random;

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
