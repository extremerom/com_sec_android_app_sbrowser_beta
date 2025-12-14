.class public final Lorg/chromium/cc/input/OffsetTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mToken:Lorg/chromium/base/Token;


# virtual methods
.method public getToken()Lorg/chromium/base/Token;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/cc/input/OffsetTag;->mToken:Lorg/chromium/base/Token;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/cc/input/OffsetTag;->mToken:Lorg/chromium/base/Token;

    invoke-virtual {p0}, Lorg/chromium/base/Token;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
