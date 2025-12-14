.class Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;
.super Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsiteInfoAvailableCallbackRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V

    return-void
.end method


# virtual methods
.method public runAsync(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V
    .locals 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->b(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->b(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->b(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->a(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->a(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;->onWebsitePermissionsAvailable(Ljava/util/List;)V

    :cond_2
    return-void
.end method
