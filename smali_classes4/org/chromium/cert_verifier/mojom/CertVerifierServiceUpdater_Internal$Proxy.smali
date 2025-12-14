.class final Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public updateAdditionalCertificates(Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;)V
    .locals 3

    new-instance v0, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterUpdateAdditionalCertificatesParams;

    invoke-direct {v0}, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterUpdateAdditionalCertificatesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterUpdateAdditionalCertificatesParams;->certificates:Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public waitUntilNextUpdateForTesting(Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater$WaitUntilNextUpdateForTesting_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingParams;

    invoke-direct {v0}, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater_Internal$CertVerifierServiceUpdaterWaitUntilNextUpdateForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater$WaitUntilNextUpdateForTesting_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
