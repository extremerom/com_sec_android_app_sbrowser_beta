.class public interface abstract Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2CredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method

.method public abstract getCredentialResponseFromJson(Ljava/lang/String;)[B
.end method

.method public abstract getOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method

.method public abstract makeCredentialResponseFromJson(Ljava/lang/String;)[B
.end method
