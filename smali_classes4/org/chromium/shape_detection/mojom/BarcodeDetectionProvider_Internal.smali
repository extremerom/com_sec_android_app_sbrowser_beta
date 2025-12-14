.class Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$BarcodeDetectionProviderEnumerateSupportedFormatsResponseParamsProxyToResponder;,
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$BarcodeDetectionProviderEnumerateSupportedFormatsResponseParamsForwardToCallback;,
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$BarcodeDetectionProviderEnumerateSupportedFormatsResponseParams;,
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$BarcodeDetectionProviderEnumerateSupportedFormatsParams;,
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$BarcodeDetectionProviderCreateBarcodeDetectionParams;,
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$Stub;,
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;",
            "Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
