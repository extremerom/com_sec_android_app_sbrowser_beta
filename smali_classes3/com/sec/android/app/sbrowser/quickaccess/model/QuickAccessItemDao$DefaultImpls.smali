.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static applyItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p5, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;

    invoke-direct {v0, p5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;-><init>(Lib/c;)V

    :goto_0
    iget-object p5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$2:Ljava/lang/Object;

    move-object p4, p0

    check-cast p4, Ljava/util/List;

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$1:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Ljava/util/List;

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteItems(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->label:I

    invoke-interface {p0, p4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->updateItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p0

    move-object p0, p3

    :goto_2
    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$applyItems$1;->label:I

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->insertItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static deleteItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;
    .locals 9
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p6, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;

    invoke-direct {v0, p6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;-><init>(Lib/c;)V

    :goto_0
    iget-object p6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->result:Ljava/lang/Object;

    sget-object v7, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->label:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p6}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$2:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Ljava/util/List;

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {p6}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p6}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->label:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteSyncableUrls(Ljava/lang/String;Ljava/util/List;JLib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v7, :cond_4

    return-object v7

    :cond_4
    :goto_1
    const/4 p2, 0x0

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->L$2:Ljava/lang/Object;

    iput v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$1;->label:I

    invoke-interface {p0, p1, p3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteByUrls(Ljava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_5

    return-object v7

    :cond_5
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static deleteItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 5
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;

    invoke-direct {v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;-><init>(Lib/c;)V

    :goto_0
    iget-object p3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->L$1:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/util/List;

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->label:I

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->updateItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->label:I

    invoke-interface {p0, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static deleteSyncableUrls(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/lang/String;Ljava/util/List;JLib/c;)Ljava/lang/Object;
    .locals 15
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;

    iget v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;-><init>(Lib/c;)V

    :goto_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->result:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-wide v5, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->J$0:J

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v14, v3

    move-wide v12, v5

    move-object v0, v8

    move-object v3, v1

    move-object v1, v7

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v12, p3

    move-object v14, v0

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v1, p1

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->getRandomDupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "getRandomDupUrl(...)"

    invoke-static {v8, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->L$2:Ljava/lang/Object;

    iput-wide v12, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->J$0:J

    iput v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteSyncableUrls$1;->label:I

    move-object v5, v0

    move-object v6, v1

    move-wide v9, v12

    move-object v11, v3

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->updateDeleteState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLib/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_3

    return-object v2

    :cond_4
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method

.method public static getItemByRefererUrlAndDeviceId(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 2
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "refererUrl"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->isRefererUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    return-object p2
.end method
