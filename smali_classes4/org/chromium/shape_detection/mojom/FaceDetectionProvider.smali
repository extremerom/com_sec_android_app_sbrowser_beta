.class public interface abstract Lorg/chromium/shape_detection/mojom/FaceDetectionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/shape_detection/mojom/FaceDetectionProvider$Proxy;
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

    sget-object v0, Lorg/chromium/shape_detection/mojom/FaceDetectionProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/shape_detection/mojom/FaceDetectionProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createFaceDetection(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/shape_detection/mojom/FaceDetection;",
            ">;",
            "Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;",
            ")V"
        }
    .end annotation
.end method
