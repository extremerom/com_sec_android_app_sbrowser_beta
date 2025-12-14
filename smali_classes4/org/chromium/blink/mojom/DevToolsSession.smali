.class public interface abstract Lorg/chromium/blink/mojom/DevToolsSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DevToolsSession$Proxy;
    }
.end annotation


# virtual methods
.method public abstract dispatchProtocolCommand(ILjava/lang/String;Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;)V
.end method

.method public abstract unpauseAndTerminate()V
.end method
