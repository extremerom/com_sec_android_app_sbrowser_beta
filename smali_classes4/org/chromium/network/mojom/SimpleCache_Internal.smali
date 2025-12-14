.class Lorg/chromium/network/mojom/SimpleCache_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDetachResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDetachResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDetachResponseParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDetachParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheEnumerateEntriesParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomAllEntriesResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomAllEntriesResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomAllEntriesResponseParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomAllEntriesParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomEntryResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomEntryResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomEntryResponseParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheDoomEntryParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheOpenEntryResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheOpenEntryResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheOpenEntryResponseParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheOpenEntryParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheCreateEntryResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheCreateEntryResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheCreateEntryResponseParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$SimpleCacheCreateEntryParams;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$Stub;,
        Lorg/chromium/network/mojom/SimpleCache_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/SimpleCache;",
            "Lorg/chromium/network/mojom/SimpleCache$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/SimpleCache_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCache_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/SimpleCache_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
