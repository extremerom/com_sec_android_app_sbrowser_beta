.class Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$MediaPlayerRendererExtensionInitiateScopedSurfaceRequestResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$MediaPlayerRendererExtensionInitiateScopedSurfaceRequestResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$MediaPlayerRendererExtensionInitiateScopedSurfaceRequestResponseParams;,
        Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$MediaPlayerRendererExtensionInitiateScopedSurfaceRequestParams;,
        Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$Stub;,
        Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/MediaPlayerRendererExtension;",
            "Lorg/chromium/media/mojom/MediaPlayerRendererExtension$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/MediaPlayerRendererExtension_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
