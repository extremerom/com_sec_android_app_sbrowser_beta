.class Lorg/chromium/media/mojom/AudioEncoder_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderFlushResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderFlushResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderFlushResponseParams;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderFlushParams;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderEncodeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderEncodeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderEncodeResponseParams;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderEncodeParams;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderInitializeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderInitializeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderInitializeResponseParams;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$AudioEncoderInitializeParams;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$Stub;,
        Lorg/chromium/media/mojom/AudioEncoder_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/AudioEncoder;",
            "Lorg/chromium/media/mojom/AudioEncoder$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/AudioEncoder_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioEncoder_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/AudioEncoder_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
