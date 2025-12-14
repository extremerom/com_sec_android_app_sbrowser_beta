.class public interface abstract Lorg/chromium/blink/mojom/DomStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DomStorage$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindSessionStorageArea(Lorg/chromium/blink/mojom/StorageKey;Lorg/chromium/blink/mojom/LocalFrameToken;Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/StorageKey;",
            "Lorg/chromium/blink/mojom/LocalFrameToken;",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/StorageArea;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindSessionStorageNamespace(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/SessionStorageNamespace;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openLocalStorage(Lorg/chromium/blink/mojom/StorageKey;Lorg/chromium/blink/mojom/LocalFrameToken;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/StorageKey;",
            "Lorg/chromium/blink/mojom/LocalFrameToken;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/StorageArea;",
            ">;)V"
        }
    .end annotation
.end method
