.class public interface abstract Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier$Proxy;
    }
.end annotation


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyResourceLoadCanceled(J)V
.end method

.method public abstract notifyResourceLoadCompleted(Lorg/chromium/blink/mojom/ResourceLoadInfo;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
.end method

.method public abstract notifyResourceRedirectReceived(Lorg/chromium/network/mojom/UrlRequestRedirectInfo;Lorg/chromium/network/mojom/UrlResponseHead;)V
.end method

.method public abstract notifyResourceResponseReceived(JLorg/chromium/url/mojom/SchemeHostPort;Lorg/chromium/network/mojom/UrlResponseHead;IZ)V
.end method

.method public abstract notifyResourceTransferSizeUpdated(JI)V
.end method

.method public abstract notifyUpdateUserGestureCarryoverInfo()V
.end method
