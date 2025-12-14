.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1;->collect(LQc/i;Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQc/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "R",
        "value",
        "Ldb/r;",
        "emit",
        "(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:LQc/i;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;


# direct methods
.method public constructor <init>(LQc/i;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2;->$this_unsafeFlow:LQc/i;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 13
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2;->$this_unsafeFlow:LQc/i;

    check-cast p1, Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->access$getLatestItemInCollection(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;Ljava/util/List;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object v5

    new-instance v12, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getLastModifiedTime()J

    move-result-wide v10

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDtoKt;->toDto(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v4, Ldb/j;

    invoke-direct {v4, v12, v5}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$lambda$4$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$lambda$4$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v2, p0}, Lfb/n;->a0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, p0, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
