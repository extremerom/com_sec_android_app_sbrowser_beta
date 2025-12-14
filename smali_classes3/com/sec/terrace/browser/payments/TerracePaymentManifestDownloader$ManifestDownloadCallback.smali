.class public interface abstract Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ManifestDownloadCallback"
.end annotation


# virtual methods
.method public abstract onManifestDownloadFailure(Ljava/lang/String;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onPaymentMethodManifestDownloadSuccess(Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Ljava/lang/String;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onWebAppManifestDownloadSuccess(Ljava/lang/String;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
