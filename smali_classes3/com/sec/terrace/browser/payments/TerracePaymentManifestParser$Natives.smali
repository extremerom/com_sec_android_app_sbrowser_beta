.class interface abstract Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createTinPaymentManifestParserAndroid(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method public abstract destroyTinPaymentManifestParserAndroid(J)V
.end method

.method public abstract parsePaymentMethodManifest(JLorg/chromium/url/GURL;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V
.end method

.method public abstract parseWebAppManifest(JLjava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V
.end method
