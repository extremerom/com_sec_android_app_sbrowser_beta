.class public interface abstract Lorg/chromium/blink/mojom/DomStorageProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DomStorageProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindDomStorage(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/DomStorageClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/DomStorage;",
            ">;",
            "Lorg/chromium/blink/mojom/DomStorageClient;",
            ")V"
        }
    .end annotation
.end method
