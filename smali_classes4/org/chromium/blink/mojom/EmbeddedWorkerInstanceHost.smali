.class public interface abstract Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost$RequestTermination_Response;,
        Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract countFeature(I)V
.end method

.method public abstract onReadyForInspection(Lorg/chromium/blink/mojom/DevToolsAgent;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/DevToolsAgent;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/DevToolsAgentHost;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReportConsoleMessage(IILorg/chromium/mojo_base/mojom/String16;ILorg/chromium/url/mojom/Url;)V
.end method

.method public abstract onReportException(Lorg/chromium/mojo_base/mojom/String16;IILorg/chromium/url/mojom/Url;)V
.end method

.method public abstract onScriptEvaluationStart()V
.end method

.method public abstract onScriptLoaded()V
.end method

.method public abstract onStarted(IIZZILorg/chromium/blink/mojom/EmbeddedWorkerStartTiming;)V
.end method

.method public abstract onStopped()V
.end method

.method public abstract requestTermination(Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost$RequestTermination_Response;)V
.end method
