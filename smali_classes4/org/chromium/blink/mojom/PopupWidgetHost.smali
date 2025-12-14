.class public interface abstract Lorg/chromium/blink/mojom/PopupWidgetHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PopupWidgetHost$SetPopupBounds_Response;,
        Lorg/chromium/blink/mojom/PopupWidgetHost$ShowPopup_Response;,
        Lorg/chromium/blink/mojom/PopupWidgetHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract requestClosePopup()V
.end method

.method public abstract setPopupBounds(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/PopupWidgetHost$SetPopupBounds_Response;)V
.end method

.method public abstract showPopup(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/PopupWidgetHost$ShowPopup_Response;)V
.end method
