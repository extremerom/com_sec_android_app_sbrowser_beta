.class public interface abstract Lorg/chromium/blink/mojom/RemoteMainFrameHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteMainFrameHost$UpdateTargetUrl_Response;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract focusPage()V
.end method

.method public abstract routeCloseEvent()V
.end method

.method public abstract takeFocus(Z)V
.end method

.method public abstract updateTargetUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/RemoteMainFrameHost$UpdateTargetUrl_Response;)V
.end method
