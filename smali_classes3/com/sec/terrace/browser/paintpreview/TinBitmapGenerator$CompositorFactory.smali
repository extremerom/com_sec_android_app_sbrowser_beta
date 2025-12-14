.class public interface abstract Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$CompositorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompositorFactory"
.end annotation


# virtual methods
.method public abstract create(Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;Ljava/lang/String;JLorg/chromium/base/Callback;)Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/GURL;",
            "Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;",
            "Ljava/lang/String;",
            "J",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;"
        }
    .end annotation
.end method
