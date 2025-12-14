.class Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$LocalStorageInfoReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;->runAsync(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;

.field final synthetic val$queue:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher$1;->val$queue:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalStorageInfoReady(Ljava/util/HashMap;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->c(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->setLocalStorageInfo(Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher$1;->val$queue:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method
