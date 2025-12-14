.class public interface abstract Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultListener"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFetched(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
.end method

.method public abstract onNeedRetry(Ljava/lang/String;Ljava/lang/String;)V
.end method
