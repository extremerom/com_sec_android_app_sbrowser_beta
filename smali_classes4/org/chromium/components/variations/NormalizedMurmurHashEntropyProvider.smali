.class public final Lorg/chromium/components/variations/NormalizedMurmurHashEntropyProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static finalMix(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, -0x7a143595

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static hash16(II)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p1, v0

    const/16 v0, 0xf

    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    const v0, 0x1b873593

    mul-int/2addr p1, v0

    xor-int/2addr p0, p1

    xor-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Lorg/chromium/components/variations/NormalizedMurmurHashEntropyProvider;->finalMix(I)I

    move-result p0

    return p0
.end method
