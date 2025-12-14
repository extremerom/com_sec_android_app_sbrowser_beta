.class interface abstract Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceAppBannerDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract closeBannerIfNeeded(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V
.end method

.method public abstract create(Lcom/sec/terrace/TerraceAppBannerDataFetcher;Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method public abstract fetchManifest(JLcom/sec/terrace/TerraceAppBannerDataFetcher;IJI)V
.end method

.method public abstract onInstall(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V
.end method

.method public abstract onJavaTinAppBannerDataFetcherDestroyed(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V
.end method

.method public abstract sendBannerEvent(JLcom/sec/terrace/TerraceAppBannerDataFetcher;I)V
.end method
