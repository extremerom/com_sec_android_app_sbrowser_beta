.class public Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;


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

.method public static get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LJ/N;->M6B2k76c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCredentialResponseFromJson(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, LJ/N;->MmRW6hZr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LJ/N;->McPuucYs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public makeCredentialResponseFromJson(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, LJ/N;->MPFEczot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
