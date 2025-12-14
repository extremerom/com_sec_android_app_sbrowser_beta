.class public final Lorg/chromium/cc/input/BrowserControlsOffsetTagModifications;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mBottomControlsAdditionalHeight:I

.field private final mTags:Lorg/chromium/cc/input/BrowserControlsOffsetTags;

.field private final mTopControlsAdditionalHeight:I


# virtual methods
.method public getBottomControlsAdditionalHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/cc/input/BrowserControlsOffsetTagModifications;->mBottomControlsAdditionalHeight:I

    return p0
.end method

.method public getTags()Lorg/chromium/cc/input/BrowserControlsOffsetTags;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/cc/input/BrowserControlsOffsetTagModifications;->mTags:Lorg/chromium/cc/input/BrowserControlsOffsetTags;

    return-object p0
.end method

.method public getTopControlsAdditionalHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/cc/input/BrowserControlsOffsetTagModifications;->mTopControlsAdditionalHeight:I

    return p0
.end method
