.class Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;
.super Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupExceptionInfoFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V

    return-void
.end method


# virtual methods
.method public runAsync(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->getOriginsForContentSetting(IZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-static {v4, v2, v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->c(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->setPermissionInfo(Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method
