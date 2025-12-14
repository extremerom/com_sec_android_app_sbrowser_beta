.class Lorg/chromium/net/HttpNegotiateAuthenticatorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;


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

.method public static get()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/net/HttpNegotiateAuthenticatorJni;

    invoke-direct {v0}, Lorg/chromium/net/HttpNegotiateAuthenticatorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M0s8NeYn(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
