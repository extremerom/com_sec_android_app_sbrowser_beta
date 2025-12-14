.class public interface abstract Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceAppBannerDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerraceAppBannerDataFetcherDelegate"
.end annotation


# virtual methods
.method public abstract destroyDialogIfExisted()V
.end method

.method public abstract onBannerShownResult(Ljava/lang/String;II)V
.end method

.method public abstract onDisplayAppBanner(I)V
.end method

.method public abstract onFetchedManifest(ILcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)V
.end method

.method public abstract onFetchedManifestWithPWAStatus(ILcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;I)V
.end method
