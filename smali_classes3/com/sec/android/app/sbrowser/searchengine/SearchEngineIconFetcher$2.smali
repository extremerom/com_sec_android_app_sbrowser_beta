.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;
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

.field final synthetic val$contentType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

.field final synthetic val$message:Landroid/os/Message;

.field final synthetic val$pageUrl:Ljava/lang/String;

.field final synthetic val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;Ljava/lang/String;Landroid/os/Message;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$pageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$message:Landroid/os/Message;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$contentType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SearchEngineIconFetche"

    const-string v1, "fetchContent - run on worker thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$pageUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->a(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "fetchContent - fetching html failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$message:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {v1}, Ll5/a;->c(Ljava/lang/String;)LQd/j;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchContent - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "fetchContent - parsing html failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$message:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$3;->$SwitchMap$com$sec$android$app$sbrowser$searchengine$SearchEngineIconFetcher$ContentType:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$contentType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$pageUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->b(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mHeight:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$pageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->d(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;LQd/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->c(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->b(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$result:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchResult;->mHeight:I

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$2;->val$message:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
