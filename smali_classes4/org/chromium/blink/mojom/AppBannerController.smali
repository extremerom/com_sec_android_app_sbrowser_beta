.class public interface abstract Lorg/chromium/blink/mojom/AppBannerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AppBannerController$BannerPromptRequest_Response;,
        Lorg/chromium/blink/mojom/AppBannerController$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bannerPromptRequest(Lorg/chromium/blink/mojom/AppBannerService;Lorg/chromium/mojo/bindings/InterfaceRequest;[Ljava/lang/String;Lorg/chromium/blink/mojom/AppBannerController$BannerPromptRequest_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/AppBannerService;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/AppBannerEvent;",
            ">;[",
            "Ljava/lang/String;",
            "Lorg/chromium/blink/mojom/AppBannerController$BannerPromptRequest_Response;",
            ")V"
        }
    .end annotation
.end method
