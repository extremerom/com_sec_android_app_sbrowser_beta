.class final Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->fetchSyncedTabItems()V
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
    c = "com.sec.android.app.sbrowser.quickaccess.model.SyncedTabRepository$fetchSyncedTabItems$1"
    f = "SyncedTabRepository.kt"
    l = {
        0xa0
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0
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

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->access$getOpenTabDbUtility$p(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->getSyncedTabsFromTabTable()Ljava/util/List;

    move-result-object v2

    const-string v4, "getSyncedTabsFromTabTable(...)"

    invoke-static {v2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    move-object v12, v6

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->access$getDefaultOgImage(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x1af

    const/16 v19, 0x0

    invoke-static/range {v7 .. v19}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lfb/n;->i0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Synced tab items fetched; size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyncedTabRepository"

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->access$getMoreButtonItem$cp()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v4, LNc/N;->a:LWc/f;

    sget-object v4, LUc/q;->a:LNc/w0;

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1$1;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/util/List;Lib/c;)V

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->label:I

    invoke-static {v4, v5, v0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->access$fetchIconForItems(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
