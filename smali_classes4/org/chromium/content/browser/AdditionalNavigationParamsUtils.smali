.class public Lorg/chromium/content/browser/AdditionalNavigationParamsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method private static create(Lorg/chromium/base/UnguessableToken;ILorg/chromium/base/UnguessableToken;)Lorg/chromium/content_public/browser/AdditionalNavigationParams;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/AdditionalNavigationParams;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content_public/browser/AdditionalNavigationParams;-><init>(Lorg/chromium/base/UnguessableToken;ILorg/chromium/base/UnguessableToken;)V

    return-object v0
.end method

.method private static getAttributionSrcToken(Lorg/chromium/content_public/browser/AdditionalNavigationParams;)Lorg/chromium/base/UnguessableToken;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->getAttributionSrcToken()Lorg/chromium/base/UnguessableToken;

    move-result-object p0

    return-object p0
.end method

.method private static getInitiatorFrameToken(Lorg/chromium/content_public/browser/AdditionalNavigationParams;)Lorg/chromium/base/UnguessableToken;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->getInitiatorFrameToken()Lorg/chromium/base/UnguessableToken;

    move-result-object p0

    return-object p0
.end method

.method private static getInitiatorProcessId(Lorg/chromium/content_public/browser/AdditionalNavigationParams;)I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->getInitiatorProcessId()I

    move-result p0

    return p0
.end method
