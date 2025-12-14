.class public abstract Lorg/chromium/base/TokenBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field protected final mHigh:J

.field protected final mLow:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/base/TokenBase;->mHigh:J

    iput-wide p3, p0, Lorg/chromium/base/TokenBase;->mLow:J

    return-void
.end method

.method private getHighForSerialization()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/base/TokenBase;->mHigh:J

    return-wide v0
.end method

.method private getLowForSerialization()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/base/TokenBase;->mLow:J

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/chromium/base/TokenBase;

    iget-wide v1, p1, Lorg/chromium/base/TokenBase;->mHigh:J

    iget-wide v3, p0, Lorg/chromium/base/TokenBase;->mHigh:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p1, Lorg/chromium/base/TokenBase;->mLow:J

    iget-wide p0, p0, Lorg/chromium/base/TokenBase;->mLow:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lorg/chromium/base/TokenBase;->mLow:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    iget-wide v3, p0, Lorg/chromium/base/TokenBase;->mHigh:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int p0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method
