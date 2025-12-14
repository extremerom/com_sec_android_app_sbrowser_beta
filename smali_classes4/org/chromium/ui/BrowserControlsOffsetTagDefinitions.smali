.class public final Lorg/chromium/ui/BrowserControlsOffsetTagDefinitions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mConstraints:Lorg/chromium/ui/BrowserControlsOffsetTagConstraints;

.field private final mTags:Lorg/chromium/cc/input/BrowserControlsOffsetTags;


# virtual methods
.method public getConstraints()Lorg/chromium/ui/BrowserControlsOffsetTagConstraints;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/BrowserControlsOffsetTagDefinitions;->mConstraints:Lorg/chromium/ui/BrowserControlsOffsetTagConstraints;

    return-object p0
.end method

.method public getTags()Lorg/chromium/cc/input/BrowserControlsOffsetTags;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/BrowserControlsOffsetTagDefinitions;->mTags:Lorg/chromium/cc/input/BrowserControlsOffsetTags;

    return-object p0
.end method
