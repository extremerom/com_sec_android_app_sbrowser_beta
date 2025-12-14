.class Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal$FaceDetectionProviderCreateFaceDetectionParams;,
        Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal$Stub;,
        Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/shape_detection/mojom/FaceDetectionProvider;",
            "Lorg/chromium/shape_detection/mojom/FaceDetectionProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
