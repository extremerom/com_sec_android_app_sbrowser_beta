.class public interface abstract Lorg/chromium/on_device_model/mojom/TextSafetyModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/TextSafetyModel$Proxy;
    }
.end annotation


# virtual methods
.method public abstract startSession(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/TextSafetySession;",
            ">;)V"
        }
    .end annotation
.end method
