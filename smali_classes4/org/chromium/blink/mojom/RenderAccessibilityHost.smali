.class public interface abstract Lorg/chromium/blink/mojom/RenderAccessibilityHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RenderAccessibilityHost$HandleAxEvents_Response;,
        Lorg/chromium/blink/mojom/RenderAccessibilityHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract handleAxEvents(Lorg/chromium/ax/mojom/AxUpdatesAndEvents;Lorg/chromium/ax/mojom/AxLocationAndScrollUpdates;ILorg/chromium/blink/mojom/RenderAccessibilityHost$HandleAxEvents_Response;)V
.end method

.method public abstract handleAxLocationChanges(Lorg/chromium/ax/mojom/AxLocationAndScrollUpdates;I)V
.end method
