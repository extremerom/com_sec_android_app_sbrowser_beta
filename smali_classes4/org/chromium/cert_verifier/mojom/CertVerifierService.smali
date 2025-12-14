.class public interface abstract Lorg/chromium/cert_verifier/mojom/CertVerifierService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cert_verifier/mojom/CertVerifierService$Proxy;
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

    sget-object v0, Lorg/chromium/cert_verifier/mojom/CertVerifierService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/cert_verifier/mojom/CertVerifierService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract enableNetworkAccess(Lorg/chromium/network/mojom/UrlLoaderFactory;Lorg/chromium/cert_verifier/mojom/UrlLoaderFactoryConnector;)V
.end method

.method public abstract setConfig(Lorg/chromium/cert_verifier/mojom/CertVerifierConfig;)V
.end method

.method public abstract verify(Lorg/chromium/cert_verifier/mojom/RequestParams;Lorg/chromium/network/mojom/NetLogSource;Lorg/chromium/cert_verifier/mojom/CertVerifierRequest;)V
.end method
