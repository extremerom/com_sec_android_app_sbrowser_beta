.class Lorg/chromium/media/PhotoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/PhotoCapabilities$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field public mBoolCapability:[Z

.field public mDoubleCapability:[D

.field public mFillLightModeArray:[I

.field public mIntCapability:[I

.field public mMeteringMode:[I

.field public mMeteringModeArray:[[I


# direct methods
.method public constructor <init>([Z[D[I[I[I[[I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    array-length v0, p2

    const/16 v2, 0x10

    if-ne v0, v2, :cond_b

    array-length v0, p3

    if-ne v0, v2, :cond_b

    array-length v0, p5

    if-ne v0, v1, :cond_b

    array-length v0, p6

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move v2, v0

    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_1

    aget v3, p4, v2

    if-ltz v3, :cond_0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    move v2, v0

    :goto_1
    array-length v3, p5

    const/4 v4, 0x5

    if-ge v2, v3, :cond_3

    aget v3, p5, v2

    if-ltz v3, :cond_2

    if-ge v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    move v2, v0

    :goto_2
    array-length v3, p6

    if-ge v2, v3, :cond_7

    aget-object v3, p6, v2

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_3
    aget-object v5, p6, v2

    array-length v6, v5

    if-ge v3, v6, :cond_6

    aget v5, v5, v3

    if-ltz v5, :cond_5

    if-ge v5, v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lorg/chromium/media/PhotoCapabilities;->mBoolCapability:[Z

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/chromium/media/PhotoCapabilities;->mDoubleCapability:[D

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/chromium/media/PhotoCapabilities;->mIntCapability:[I

    const/4 p1, 0x0

    if-nez p4, :cond_8

    move-object p2, p1

    goto :goto_5

    :cond_8
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    :goto_5
    iput-object p2, p0, Lorg/chromium/media/PhotoCapabilities;->mFillLightModeArray:[I

    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    iput-object p2, p0, Lorg/chromium/media/PhotoCapabilities;->mMeteringMode:[I

    new-array p2, v1, [[I

    iput-object p2, p0, Lorg/chromium/media/PhotoCapabilities;->mMeteringModeArray:[[I

    :goto_6
    array-length p2, p6

    if-ge v0, p2, :cond_a

    iget-object p2, p0, Lorg/chromium/media/PhotoCapabilities;->mMeteringModeArray:[[I

    aget-object p3, p6, v0

    if-nez p3, :cond_9

    move-object p3, p1

    goto :goto_7

    :cond_9
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    :goto_7
    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getBool(I)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/PhotoCapabilities;->mBoolCapability:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getDouble(I)D
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/PhotoCapabilities;->mDoubleCapability:[D

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getFillLightModeArray()[I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/PhotoCapabilities;->mFillLightModeArray:[I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    :goto_0
    return-object p0
.end method

.method public getInt(I)I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/PhotoCapabilities;->mIntCapability:[I

    aget p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getMeteringMode(I)I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/PhotoCapabilities;->mMeteringMode:[I

    aget p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getMeteringModeArray(I)[I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lorg/chromium/media/PhotoCapabilities;->mMeteringModeArray:[[I

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
