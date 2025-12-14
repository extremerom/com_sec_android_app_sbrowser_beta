.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->loadNews(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.ui.viewmodel.NewsItemViewModel$loadNews$1"
    f = "NewsItemViewModel.kt"
    l = {
        0x46,
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $category:Ljava/lang/String;

.field final synthetic $page:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;ILjava/lang/String;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;",
            "I",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->$page:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->$category:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->$page:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->$category:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;ILjava/lang/String;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$setLoading$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Z)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->$page:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$setLastNewsRefreshTime$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$getNewsFeedRepository(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->$category:Ljava/lang/String;

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->getNewsItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$getLastNewsRefreshTime$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-gez v1, :cond_5

    const/16 v1, 0x1f4

    int-to-long v8, v1

    sub-long/2addr v8, v6

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->label:I

    invoke-static {v8, v9, p0}, LNc/E;->k(JLkb/i;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    :goto_1
    move-object p1, v0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$setNewsItemList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Ljava/util/List;)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$getNewsItemList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$setLastPageReached$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Z)V

    return-object v2

    :cond_7
    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->$page:I

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$setLastNewsPageNumber$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$getNewsItemList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_8

    move v1, v3

    goto :goto_2

    :cond_8
    move v1, v5

    :goto_2
    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$setLastPageReached$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$get_newsItems$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Landroidx/lifecycle/X;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$isLastPageReached$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$getNewsItemList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$getNewsItemList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v3

    invoke-interface {v1, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$get_newsType$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Landroidx/lifecycle/X;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;->TYPE_SINGLE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    const-string p1, "NewsItemViewModel"

    const-string v0, "LoadNews: failed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;

    invoke-static {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->access$setLoading$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Z)V

    return-object v2
.end method
