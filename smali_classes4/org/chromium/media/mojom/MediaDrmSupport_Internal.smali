.class Lorg/chromium/media/mojom/MediaDrmSupport_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaDrmSupport_Internal$MediaDrmSupportIsKeySystemSupportedResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaDrmSupport_Internal$MediaDrmSupportIsKeySystemSupportedResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaDrmSupport_Internal$MediaDrmSupportIsKeySystemSupportedResponseParams;,
        Lorg/chromium/media/mojom/MediaDrmSupport_Internal$MediaDrmSupportIsKeySystemSupportedParams;,
        Lorg/chromium/media/mojom/MediaDrmSupport_Internal$Stub;,
        Lorg/chromium/media/mojom/MediaDrmSupport_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/MediaDrmSupport;",
            "Lorg/chromium/media/mojom/MediaDrmSupport$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/MediaDrmSupport_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/MediaDrmSupport_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/MediaDrmSupport_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
