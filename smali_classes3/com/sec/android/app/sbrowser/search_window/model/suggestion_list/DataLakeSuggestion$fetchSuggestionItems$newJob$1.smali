.class final Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->fetchSuggestionItems(Lsb/k;Ljava/lang/String;IJJ)V
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
    c = "com.sec.android.app.sbrowser.search_window.model.suggestion_list.DataLakeSuggestion$fetchSuggestionItems$newJob$1"
    f = "DataLakeSuggestion.kt"
    l = {
        0x39,
        0x3a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $debounceDelay:J

.field final synthetic $listener:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation
.end field

.field final synthetic $query:Ljava/lang/String;

.field final synthetic $size:I

.field final synthetic $timeout:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;


# direct methods
.method public constructor <init>(JJLcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Ljava/lang/String;ILsb/k;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;",
            "Ljava/lang/String;",
            "I",
            "Lsb/k;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$debounceDelay:J

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$timeout:J

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$query:Ljava/lang/String;

    iput p7, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$size:I

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$listener:Lsb/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 11
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

    new-instance v10, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$debounceDelay:J

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$timeout:J

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$query:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$size:I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$listener:Lsb/k;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;-><init>(JJLcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Ljava/lang/String;ILsb/k;Lib/c;)V

    iput-object p1, v10, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->L$0:Ljava/lang/Object;

    return-object v10
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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->L$0:Ljava/lang/Object;

    check-cast v0, LNc/B;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->L$0:Ljava/lang/Object;

    check-cast v1, LNc/B;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LNc/B;

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$debounceDelay:J

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->label:I

    invoke-static {v4, v5, p0}, LNc/E;->k(JLkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$timeout:J

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1$result$1;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$query:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$size:I

    const/4 v8, 0x0

    invoke-direct {p1, v5, v6, v7, v8}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1$result$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Ljava/lang/String;ILib/c;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->label:I

    invoke-static {v3, v4, p1, p0}, LNc/E;->M(JLsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ldb/m;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$listener:Lsb/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;

    iget-object p1, p1, Ldb/m;->a:Ljava/lang/Object;

    instance-of v2, p1, Ldb/l;

    if-nez v2, :cond_7

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeResponse;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeResponse;->getContents()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->toTerraceOmniboxSuggestion()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Success to fetch data from Data Lake: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataLakeSuggestion"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const-string v2, "convert failed"

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->access$onFailure(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Lsb/k;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$listener:Lsb/k;

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->access$onFailure(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Lsb/k;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;->$listener:Lsb/k;

    const-string v0, "timeout"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->access$onFailure(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Lsb/k;Ljava/lang/String;)V

    :cond_9
    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
