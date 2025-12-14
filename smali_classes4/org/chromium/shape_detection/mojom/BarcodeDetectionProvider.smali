.class public interface abstract Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider$EnumerateSupportedFormats_Response;,
        Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider$Proxy;
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

    sget-object v0, Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createBarcodeDetection(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/shape_detection/mojom/BarcodeDetection;",
            ">;",
            "Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;",
            ")V"
        }
    .end annotation
.end method

.method public abstract enumerateSupportedFormats(Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider$EnumerateSupportedFormats_Response;)V
.end method
