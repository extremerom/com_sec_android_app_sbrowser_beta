.class public interface abstract Lorg/chromium/blink/mojom/DevToolsSessionHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DevToolsSessionHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract dispatchProtocolNotification(Lorg/chromium/blink/mojom/DevToolsMessage;Lorg/chromium/blink/mojom/DevToolsSessionState;)V
.end method

.method public abstract dispatchProtocolResponse(Lorg/chromium/blink/mojom/DevToolsMessage;ILorg/chromium/blink/mojom/DevToolsSessionState;)V
.end method
