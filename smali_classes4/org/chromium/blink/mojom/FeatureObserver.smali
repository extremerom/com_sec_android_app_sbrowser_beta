.class public interface abstract Lorg/chromium/blink/mojom/FeatureObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FeatureObserver$Proxy;
    }
.end annotation


# virtual methods
.method public abstract register(Lorg/chromium/mojo/bindings/InterfaceRequest;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ObservedFeature;",
            ">;I)V"
        }
    .end annotation
.end method
