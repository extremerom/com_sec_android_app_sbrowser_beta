.class Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal$CertVerifierServiceSetConfigParams;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal$CertVerifierServiceVerifyParams;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal$CertVerifierServiceEnableNetworkAccessParams;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal$Stub;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/cert_verifier/mojom/CertVerifierService;",
            "Lorg/chromium/cert_verifier/mojom/CertVerifierService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
