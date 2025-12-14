.class Lorg/chromium/media/mojom/MediaDrmStorage_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageRemovePersistentSessionResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageRemovePersistentSessionResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageRemovePersistentSessionResponseParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageRemovePersistentSessionParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageLoadPersistentSessionResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageLoadPersistentSessionResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageLoadPersistentSessionResponseParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageLoadPersistentSessionParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageSavePersistentSessionResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageSavePersistentSessionResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageSavePersistentSessionResponseParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageSavePersistentSessionParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageOnProvisionedResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageOnProvisionedResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageOnProvisionedResponseParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageOnProvisionedParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageInitializeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageInitializeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageInitializeResponseParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$MediaDrmStorageInitializeParams;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$Stub;,
        Lorg/chromium/media/mojom/MediaDrmStorage_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/MediaDrmStorage;",
            "Lorg/chromium/media/mojom/MediaDrmStorage$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/MediaDrmStorage_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/MediaDrmStorage_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/MediaDrmStorage_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
