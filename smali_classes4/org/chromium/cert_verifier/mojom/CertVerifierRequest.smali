.class public interface abstract Lorg/chromium/cert_verifier/mojom/CertVerifierRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cert_verifier/mojom/CertVerifierRequest$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/cert_verifier/mojom/CertVerifierRequest;",
            "Lorg/chromium/cert_verifier/mojom/CertVerifierRequest$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/cert_verifier/mojom/CertVerifierRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/cert_verifier/mojom/CertVerifierRequest;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract complete(Lorg/chromium/network/mojom/CertVerifyResult;I)V
.end method
