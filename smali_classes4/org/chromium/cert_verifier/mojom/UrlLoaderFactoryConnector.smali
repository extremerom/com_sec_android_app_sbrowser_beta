.class public interface abstract Lorg/chromium/cert_verifier/mojom/UrlLoaderFactoryConnector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cert_verifier/mojom/UrlLoaderFactoryConnector$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/cert_verifier/mojom/UrlLoaderFactoryConnector;",
            "Lorg/chromium/cert_verifier/mojom/UrlLoaderFactoryConnector$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/cert_verifier/mojom/UrlLoaderFactoryConnector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/cert_verifier/mojom/UrlLoaderFactoryConnector;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createUrlLoaderFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoaderFactory;",
            ">;)V"
        }
    .end annotation
.end method
