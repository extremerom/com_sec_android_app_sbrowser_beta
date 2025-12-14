.class public interface abstract Lorg/chromium/blink/mojom/RenderAccessibility;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RenderAccessibility$HitTest_Response;,
        Lorg/chromium/blink/mojom/RenderAccessibility$Proxy;
    }
.end annotation


# virtual methods
.method public abstract fatalError()V
.end method

.method public abstract hitTest(Lorg/chromium/gfx/mojom/Point;IILorg/chromium/blink/mojom/RenderAccessibility$HitTest_Response;)V
.end method

.method public abstract performAction(Lorg/chromium/ax/mojom/AxActionData;)V
.end method

.method public abstract reset(I)V
.end method

.method public abstract setMode(Lorg/chromium/ax/mojom/AxMode;I)V
.end method
