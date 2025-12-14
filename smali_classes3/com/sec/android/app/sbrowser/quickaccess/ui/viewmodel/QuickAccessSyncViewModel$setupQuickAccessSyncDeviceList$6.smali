.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->setupQuickAccessSyncDeviceList()V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;",
        "<destruct>",
        "Ldb/r;",
        "<anonymous>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.ui.viewmodel.QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6"
    f = "QuickAccessSyncViewModel.kt"
    l = {
        0xaa
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

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

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->invoke(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component2()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component3()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component4()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component5()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component6()Ljava/util/List;

    move-result-object p1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$getDeviceIdToHeaderViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$getDeviceIdToHeaderViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$getDeviceIdToItemViewHolderItemsMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$getDeviceIdToItemViewHolderItemsMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$getUrlToItemViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$getUrlToItemViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getCheckedItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$get_quickAccessSyncFragmentItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Landroidx/lifecycle/X;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->trigger(Landroidx/lifecycle/X;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v1

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->label:I

    invoke-static {v3, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$handleItemViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$get_quickAccessSyncCombinedList(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Landroidx/lifecycle/X;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->trigger(Landroidx/lifecycle/X;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$get_quickAccessSyncFragmentItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Landroidx/lifecycle/X;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->trigger$default(Landroidx/lifecycle/X;Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
