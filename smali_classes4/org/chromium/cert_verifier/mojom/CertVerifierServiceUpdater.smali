.class public interface abstract Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater$WaitUntilNextUpdateForTesting_Response;,
        Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater$Proxy;
    }
.end annotation


# virtual methods
.method public abstract updateAdditionalCertificates(Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;)V
.end method

.method public abstract waitUntilNextUpdateForTesting(Lorg/chromium/cert_verifier/mojom/CertVerifierServiceUpdater$WaitUntilNextUpdateForTesting_Response;)V
.end method
