.class Lorg/chromium/blink/mojom/BackgroundFetchService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeResponseParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsResponseParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationResponseParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchResponseParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$Stub;,
        Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BackgroundFetchService;",
            "Lorg/chromium/blink/mojom/BackgroundFetchService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
