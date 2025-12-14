.class Lorg/chromium/blink/mojom/CacheStorage_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenResponseParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchResponseParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysResponseParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteResponseParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasResponseParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$Stub;,
        Lorg/chromium/blink/mojom/CacheStorage_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/CacheStorage;",
            "Lorg/chromium/blink/mojom/CacheStorage$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorage_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/CacheStorage_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
