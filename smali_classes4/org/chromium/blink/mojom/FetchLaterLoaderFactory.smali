.class public interface abstract Lorg/chromium/blink/mojom/FetchLaterLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FetchLaterLoaderFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V
.end method

.method public abstract createLoader(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;IILorg/chromium/network/mojom/UrlRequest;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V
.end method
