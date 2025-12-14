.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessObserverHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost$Observe_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract observe(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;ZLorg/chromium/blink/mojom/FileSystemAccessObserverHost$Observe_Response;)V
.end method

.method public abstract unobserve(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;)V
.end method
