.class public final Lorg/chromium/ui/BrowserControlsOffsetTagConstraints;
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
.field private final mBottomControlsConstraints:Lorg/chromium/ui/OffsetTagConstraints;

.field private final mContentConstraints:Lorg/chromium/ui/OffsetTagConstraints;

.field private final mTopControlsConstraints:Lorg/chromium/ui/OffsetTagConstraints;


# virtual methods
.method public getBottomControlsConstraints()Lorg/chromium/ui/OffsetTagConstraints;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/BrowserControlsOffsetTagConstraints;->mBottomControlsConstraints:Lorg/chromium/ui/OffsetTagConstraints;

    return-object p0
.end method

.method public getContentConstraints()Lorg/chromium/ui/OffsetTagConstraints;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/BrowserControlsOffsetTagConstraints;->mContentConstraints:Lorg/chromium/ui/OffsetTagConstraints;

    return-object p0
.end method

.method public getTopControlsConstraints()Lorg/chromium/ui/OffsetTagConstraints;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/BrowserControlsOffsetTagConstraints;->mTopControlsConstraints:Lorg/chromium/ui/OffsetTagConstraints;

    return-object p0
.end method
