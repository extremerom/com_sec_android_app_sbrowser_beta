.class Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataResponseParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataResponseParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataResponseParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataResponseParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$Stub;,
        Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/SimpleCacheEntry;",
            "Lorg/chromium/network/mojom/SimpleCacheEntry$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
