.class Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher;
.super Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebStorageInfoFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V

    return-void
.end method


# virtual methods
.method public runAsync(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher;Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->fetchStorageInfo(Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoReadyCallback;)V

    return-void
.end method
