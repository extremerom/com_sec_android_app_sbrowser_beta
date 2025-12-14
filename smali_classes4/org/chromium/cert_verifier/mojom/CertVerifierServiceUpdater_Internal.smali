.class Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingResponseParamsProxyToResponder;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingResponseParamsForwardToCallback;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingResponseParams;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingParams;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterUpdateAdditionalCertificatesParams;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$Stub;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater;",
            "Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$1;

    invoke-direct {v0}, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
