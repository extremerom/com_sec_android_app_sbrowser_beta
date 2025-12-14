.class public interface abstract Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createForCaptureResult(Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;JLorg/chromium/url/GURL;Ljava/lang/String;ZLorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;Lorg/chromium/base/Callback;)Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;",
            "J",
            "Lorg/chromium/url/GURL;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;"
        }
    .end annotation
.end method
