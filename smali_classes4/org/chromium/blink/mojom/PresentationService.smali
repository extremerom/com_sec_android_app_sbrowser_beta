.class public interface abstract Lorg/chromium/blink/mojom/PresentationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PresentationService$ReconnectPresentation_Response;,
        Lorg/chromium/blink/mojom/PresentationService$StartPresentation_Response;,
        Lorg/chromium/blink/mojom/PresentationService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract closeConnection(Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
.end method

.method public abstract listenForScreenAvailability(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract reconnectPresentation([Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/blink/mojom/PresentationService$ReconnectPresentation_Response;)V
.end method

.method public abstract setController(Lorg/chromium/blink/mojom/PresentationController;)V
.end method

.method public abstract setDefaultPresentationUrls([Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract setReceiver(Lorg/chromium/blink/mojom/PresentationReceiver;)V
.end method

.method public abstract startPresentation([Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/PresentationService$StartPresentation_Response;)V
.end method

.method public abstract stopListeningForScreenAvailability(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract terminate(Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
.end method
