.class public interface abstract Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient;",
            "Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract streamCreated(Lorg/chromium/media/mojom/AudioInputStream;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/ReadWriteAudioDataPipe;ZLorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/mojom/AudioInputStream;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioInputStreamClient;",
            ">;",
            "Lorg/chromium/media/mojom/ReadWriteAudioDataPipe;",
            "Z",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            ")V"
        }
    .end annotation
.end method
