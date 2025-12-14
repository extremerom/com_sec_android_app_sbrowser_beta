.class public interface abstract Lorg/chromium/blink/mojom/AnnotationAgentContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AnnotationAgentContainer$CreateAgentFromSelection_Response;,
        Lorg/chromium/blink/mojom/AnnotationAgentContainer$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createAgent(Lorg/chromium/blink/mojom/AnnotationAgentHost;Lorg/chromium/mojo/bindings/InterfaceRequest;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/AnnotationAgentHost;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/AnnotationAgent;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createAgentFromSelection(ILorg/chromium/blink/mojom/AnnotationAgentContainer$CreateAgentFromSelection_Response;)V
.end method
