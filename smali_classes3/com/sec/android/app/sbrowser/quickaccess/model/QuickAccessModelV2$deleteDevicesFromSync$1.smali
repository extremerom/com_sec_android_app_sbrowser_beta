.class final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteDevicesFromSync(Ljava/util/List;)V
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
    c = "com.sec.android.app.sbrowser.quickaccess.model.QuickAccessModelV2$deleteDevicesFromSync$1"
    f = "QuickAccessModelV2.kt"
    l = {
        0x166,
        0x174
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $deviceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->$deviceIds:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1
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

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->$deviceIds:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->$deviceIds:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, p1

    move-object v9, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v9

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getQuickAccessItemDao$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object v7

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->label:I

    invoke-interface {v7, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getListItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object p1, v6

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getContext$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnDelete(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getQuickAccessItemDao$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object p1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;->label:I

    invoke-interface {p1, v6, v5, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteItems(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
