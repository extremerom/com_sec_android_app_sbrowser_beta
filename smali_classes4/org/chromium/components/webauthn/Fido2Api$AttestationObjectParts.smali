.class public final Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttestationObjectParts"
.end annotation


# instance fields
.field public attestationObject:[B

.field public authenticatorData:[B

.field public coseAlgorithm:I

.field public spki:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAll([B[BI[B)V
    .locals 0
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->authenticatorData:[B

    iput-object p2, p0, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->spki:[B

    iput p3, p0, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->coseAlgorithm:I

    iput-object p4, p0, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->attestationObject:[B

    return-void
.end method
