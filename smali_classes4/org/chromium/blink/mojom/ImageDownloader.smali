.class public interface abstract Lorg/chromium/blink/mojom/ImageDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ImageDownloader$DownloadImageFromAxNode_Response;,
        Lorg/chromium/blink/mojom/ImageDownloader$DownloadImage_Response;,
        Lorg/chromium/blink/mojom/ImageDownloader$Proxy;
    }
.end annotation


# virtual methods
.method public abstract downloadImage(Lorg/chromium/url/mojom/Url;ZLorg/chromium/gfx/mojom/Size;IZLorg/chromium/blink/mojom/ImageDownloader$DownloadImage_Response;)V
.end method

.method public abstract downloadImageFromAxNode(ILorg/chromium/gfx/mojom/Size;IZLorg/chromium/blink/mojom/ImageDownloader$DownloadImageFromAxNode_Response;)V
.end method
