.class Lorg/chromium/blink/mojom/ContentIndexService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsResponseParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteResponseParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddResponseParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesResponseParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesParams;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$Stub;,
        Lorg/chromium/blink/mojom/ContentIndexService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ContentIndexService;",
            "Lorg/chromium/blink/mojom/ContentIndexService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
