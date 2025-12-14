.class public interface abstract Lorg/chromium/network/mojom/UrlLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/UrlLoaderFactory$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/UrlLoaderFactory;",
            "Lorg/chromium/network/mojom/UrlLoaderFactory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoaderFactory;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createLoaderAndStart(Lorg/chromium/mojo/bindings/InterfaceRequest;IILorg/chromium/network/mojom/UrlRequest;Lorg/chromium/network/mojom/UrlLoaderClient;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoader;",
            ">;II",
            "Lorg/chromium/network/mojom/UrlRequest;",
            "Lorg/chromium/network/mojom/UrlLoaderClient;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            ")V"
        }
    .end annotation
.end method
