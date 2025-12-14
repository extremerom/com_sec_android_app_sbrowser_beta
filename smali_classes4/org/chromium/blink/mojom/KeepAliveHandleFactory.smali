.class public interface abstract Lorg/chromium/blink/mojom/KeepAliveHandleFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/KeepAliveHandleFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract issueKeepAliveHandle(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/KeepAliveHandle;",
            ">;)V"
        }
    .end annotation
.end method
