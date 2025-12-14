.class public Lorg/chromium/components/webauthn/InternalAuthenticatorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/webauthn/InternalAuthenticatorJni;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/InternalAuthenticatorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public invokeGetAssertionResponse(JILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MHORk0l8(JILjava/lang/Object;)V

    return-void
.end method

.method public invokeGetMatchingCredentialIdsResponse(J[[B)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M8quEYAo(JLjava/lang/Object;)V

    return-void
.end method

.method public invokeIsUserVerifyingPlatformAuthenticatorAvailableResponse(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MdPQq0XF(JZ)V

    return-void
.end method

.method public invokeMakeCredentialResponse(JILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MpeuI$e6(JILjava/lang/Object;)V

    return-void
.end method
