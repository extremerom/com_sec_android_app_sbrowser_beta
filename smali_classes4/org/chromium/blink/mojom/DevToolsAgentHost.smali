.class public interface abstract Lorg/chromium/blink/mojom/DevToolsAgentHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DevToolsAgentHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bringToForeground()V
.end method

.method public abstract childTargetCreated(Lorg/chromium/blink/mojom/DevToolsAgent;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/mojo_base/mojom/UnguessableToken;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/DevToolsAgent;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/DevToolsAgentHost;",
            ">;",
            "Lorg/chromium/url/mojom/Url;",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "ZI)V"
        }
    .end annotation
.end method

.method public abstract mainThreadDebuggerPaused()V
.end method

.method public abstract mainThreadDebuggerResumed()V
.end method
