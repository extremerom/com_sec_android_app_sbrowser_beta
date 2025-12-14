.class public interface abstract Lorg/chromium/blink/mojom/AttributionHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AttributionHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract notifyNavigationWithBackgroundRegistrationsWillStart(Lorg/chromium/blink/mojom/AttributionSrcToken;I)V
.end method

.method public abstract registerDataHost(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ[Lorg/chromium/url/internal/mojom/Origin;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/attribution_reporting/mojom/DataHost;",
            ">;IZ[",
            "Lorg/chromium/url/internal/mojom/Origin;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerNavigationDataHost(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/AttributionSrcToken;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/attribution_reporting/mojom/DataHost;",
            ">;",
            "Lorg/chromium/blink/mojom/AttributionSrcToken;",
            ")V"
        }
    .end annotation
.end method
