.class public interface abstract Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract startWorker(Lorg/chromium/blink/mojom/EmbeddedWorkerStartParams;)V
.end method

.method public abstract stopWorker()V
.end method
