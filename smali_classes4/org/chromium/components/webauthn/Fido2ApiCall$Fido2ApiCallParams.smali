.class public Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2ApiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fido2ApiCallParams"
.end annotation


# instance fields
.field public final mApi:Lb5/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/g;"
        }
    .end annotation
.end field

.field public final mCallbackDescriptor:Ljava/lang/String;

.field public final mDescriptor:Ljava/lang/String;

.field public final mIsUserVerifyingPlatformAuthenticatorAvailableMethodId:I

.field public final mMethodInterfaces:Lorg/chromium/components/webauthn/Fido2Api$Calls;

.field public final mRegisterMethodId:I

.field public final mSignMethodId:I


# direct methods
.method public constructor <init>(Lb5/g;Ljava/lang/String;Ljava/lang/String;IIILorg/chromium/components/webauthn/Fido2Api$Calls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lorg/chromium/components/webauthn/Fido2Api$Calls;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mApi:Lb5/g;

    iput-object p2, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mDescriptor:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mCallbackDescriptor:Ljava/lang/String;

    iput p4, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mRegisterMethodId:I

    iput p5, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mSignMethodId:I

    iput p6, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mIsUserVerifyingPlatformAuthenticatorAvailableMethodId:I

    iput-object p7, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mMethodInterfaces:Lorg/chromium/components/webauthn/Fido2Api$Calls;

    return-void
.end method
