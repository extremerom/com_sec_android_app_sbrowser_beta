.class public interface abstract Lorg/chromium/media/mojom/CdmServiceBroker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmServiceBroker$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getService(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo_base/mojom/FilePath;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/CdmService;",
            ">;)V"
        }
    .end annotation
.end method
