.class final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->addQuickAccessItemsFromSync(Ljava/util/List;)V
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
    c = "com.sec.android.app.sbrowser.quickaccess.model.QuickAccessModelV2$addQuickAccessItemsFromSync$1"
    f = "QuickAccessModelV2.kt"
    l = {
        0x24f,
        0x256,
        0x272
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $quickAccessItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
            ">;"
        }
    .end annotation
.end field

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->$quickAccessItems:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->invokeSuspend$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->invokeSuspend$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->invokeSuspend$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->$quickAccessItems:Ljava/util/List;

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->label:I

    if-eqz v6, :cond_3

    if-eq v6, v4, :cond_2

    if-eq v6, v3, :cond_1

    if-ne v6, v1, :cond_0

    iget-wide v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->J$0:J

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ltb/u;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->J$0:J

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ltb/u;

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    check-cast v13, LNc/B;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v11, p1

    goto/16 :goto_2

    :cond_2
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ltb/u;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ltb/u;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    check-cast v10, LNc/B;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object/from16 v7, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    move-object v10, v6

    check-cast v10, LNc/B;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getContext$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ltb/u;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getQuickAccessItemDao$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object v7

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->label:I

    invoke-interface {v7, v8, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getMaxPosition(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_4

    return-object v5

    :cond_4
    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v6

    :goto_0
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    iput v7, v6, Ltb/u;->a:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v7

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v12}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getContext$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v12

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v14}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getQuickAccessItemDao$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object v14

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$4:Ljava/lang/Object;

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$5:Ljava/lang/Object;

    iput-wide v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->J$0:J

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->label:I

    invoke-interface {v14, v9, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getListItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_6

    return-object v5

    :cond_6
    move-object/from16 v23, v9

    move-object v9, v6

    move-object/from16 v24, v8

    move-object v8, v7

    move-wide v6, v12

    move-object/from16 v12, v23

    move-object v13, v10

    move-object/from16 v10, v24

    :goto_2
    check-cast v11, Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->$quickAccessItems:Ljava/util/List;

    check-cast v15, Ljava/lang/Iterable;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/v;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/v;-><init>(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/v;

    invoke-direct {v2, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/v;-><init>(I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/model/v;

    invoke-direct {v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/v;-><init>(I)V

    move-object/from16 v18, v5

    const/4 v3, 0x3

    new-array v5, v3, [Lsb/k;

    const/4 v3, 0x0

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v4, v5, v2

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_manager/a;

    invoke-direct {v2, v1, v5}, Lcom/sec/android/app/sbrowser/tab_manager/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v15, v2}, Lfb/n;->a0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lfb/n;->i0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-object v5, v11

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 p1, v5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v2, v4, v15}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$isSameServerItem(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getLastModifiedTime()J

    move-result-wide v19

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getLastModifiedTime()J

    move-result-wide v21

    cmp-long v5, v19, v21

    if-lez v5, :cond_9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v5, p1

    move-object/from16 v11, v17

    goto :goto_4

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_a
    move-object/from16 v17, v11

    :goto_5
    move-object/from16 v11, v17

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$4:Ljava/lang/Object;

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->L$5:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->J$0:J

    const/4 v2, 0x3

    iput v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->label:I

    invoke-virtual {v1, v14, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteEntityItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_c

    return-object v2

    :cond_c
    move-wide v1, v6

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v12

    move-object v9, v13

    :goto_6
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v3, v11}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    invoke-virtual {v11, v9}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->setDeviceId(Ljava/lang/String;)V

    iget v12, v7, Ltb/u;->a:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    iput v12, v7, Ltb/u;->a:I

    invoke-virtual {v11, v12}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->setPosition(I)V

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->setSync1(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDtoKt;->toEntity(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object v11

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v11, v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertAccountFieldsOnCreate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnUpdate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-virtual {v4, v10}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->addItems(Ljava/util/List;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$requestLocalSync(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
