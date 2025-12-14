.class Lorg/chromium/media/mojom/InterfaceFactory_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmResponseParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateFlingingRendererParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateMediaPlayerRendererParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateDefaultRendererParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioEncoderParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateVideoDecoderParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioDecoderParams;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$Stub;,
        Lorg/chromium/media/mojom/InterfaceFactory_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/InterfaceFactory;",
            "Lorg/chromium/media/mojom/InterfaceFactory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
