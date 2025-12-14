.class public interface abstract Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/InternalAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract invokeGetAssertionResponse(JILjava/nio/ByteBuffer;)V
.end method

.method public abstract invokeGetMatchingCredentialIdsResponse(J[[B)V
.end method

.method public abstract invokeIsUserVerifyingPlatformAuthenticatorAvailableResponse(JZ)V
.end method

.method public abstract invokeMakeCredentialResponse(JILjava/nio/ByteBuffer;)V
.end method
