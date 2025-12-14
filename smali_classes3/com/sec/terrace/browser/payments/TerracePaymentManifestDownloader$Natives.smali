.class interface abstract Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract destroy(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;)V
.end method

.method public abstract downloadPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lorg/chromium/url/Origin;Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V
.end method

.method public abstract downloadWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lorg/chromium/url/Origin;Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V
.end method

.method public abstract init(Lorg/chromium/content_public/browser/WebContents;)J
.end method
