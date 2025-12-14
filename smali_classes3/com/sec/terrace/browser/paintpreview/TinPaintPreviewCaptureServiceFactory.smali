.class public Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceFactory$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static getServiceInstance()Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceFactoryJni;->get()Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceFactory$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceFactory$Natives;->getServiceInstanceForCurrentProfile()Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    move-result-object v0

    return-object v0
.end method
