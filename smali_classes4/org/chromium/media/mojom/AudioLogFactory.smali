.class public interface abstract Lorg/chromium/media/mojom/AudioLogFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioLogFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createAudioLog(IILorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioLog;",
            ">;)V"
        }
    .end annotation
.end method
