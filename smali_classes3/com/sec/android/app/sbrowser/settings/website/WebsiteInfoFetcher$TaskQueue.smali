.class Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;->runAsync(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V

    :cond_0
    return-void
.end method
