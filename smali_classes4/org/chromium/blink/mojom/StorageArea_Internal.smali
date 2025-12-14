.class Lorg/chromium/blink/mojom/StorageArea_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaCheckpointParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllResponseParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetResponseParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllResponseParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteResponseParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutResponseParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaAddObserverParams;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$Stub;,
        Lorg/chromium/blink/mojom/StorageArea_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/StorageArea;",
            "Lorg/chromium/blink/mojom/StorageArea$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/StorageArea_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StorageArea_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/StorageArea_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
