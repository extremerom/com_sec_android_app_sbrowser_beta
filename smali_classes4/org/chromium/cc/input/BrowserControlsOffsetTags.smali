.class public final Lorg/chromium/cc/input/BrowserControlsOffsetTags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBottomControlsOffsetTag:Lorg/chromium/cc/input/OffsetTag;

.field private final mContentOffsetTag:Lorg/chromium/cc/input/OffsetTag;

.field private final mTopControlsOffsetTag:Lorg/chromium/cc/input/OffsetTag;


# virtual methods
.method public getBottomControlsOffsetTag()Lorg/chromium/cc/input/OffsetTag;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/cc/input/BrowserControlsOffsetTags;->mBottomControlsOffsetTag:Lorg/chromium/cc/input/OffsetTag;

    return-object p0
.end method

.method public getContentOffsetTag()Lorg/chromium/cc/input/OffsetTag;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/cc/input/BrowserControlsOffsetTags;->mContentOffsetTag:Lorg/chromium/cc/input/OffsetTag;

    return-object p0
.end method

.method public getTopControlsOffsetTag()Lorg/chromium/cc/input/OffsetTag;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/cc/input/BrowserControlsOffsetTags;->mTopControlsOffsetTag:Lorg/chromium/cc/input/OffsetTag;

    return-object p0
.end method
