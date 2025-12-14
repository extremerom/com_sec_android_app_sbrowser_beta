.class public interface abstract Lorg/chromium/blink/mojom/AnchorElementInteractionHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AnchorElementInteractionHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onPointerDown(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract onPointerHover(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/AnchorElementPointerData;)V
.end method

.method public abstract onViewportHeuristicTriggered(Lorg/chromium/url/mojom/Url;)V
.end method
