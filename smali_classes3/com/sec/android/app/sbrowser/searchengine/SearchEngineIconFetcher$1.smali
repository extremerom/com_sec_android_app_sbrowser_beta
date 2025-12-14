.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->fetchContent(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;

.field final synthetic val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$1;->val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SearchEngineIconFetche"

    const-string v1, "content fetched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$1;->val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mIcon:Landroid/graphics/Bitmap;

    iget p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mHeight:I

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;->onContentFetched(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method
