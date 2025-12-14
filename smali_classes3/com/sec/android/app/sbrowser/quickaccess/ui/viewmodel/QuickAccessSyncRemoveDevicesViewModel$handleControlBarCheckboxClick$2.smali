.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->handleControlBarCheckboxClick(Lib/c;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.quickaccess.ui.viewmodel.QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2"
    f = "QuickAccessSyncRemoveDevicesViewModel.kt"
    l = {
        0x11c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->Z$0:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->access$get_quickAccessSyncRemoveDevicesFragmentItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)Landroidx/lifecycle/X;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->isAllItemsChecked()Z

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->access$getDeviceIdToViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v4, "<get-entries>(...)"

    invoke-static {v1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2$invokeSuspend$$inlined$compareByDescending$1;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2$invokeSuspend$$inlined$compareByDescending$1;-><init>()V

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2$invokeSuspend$$inlined$thenBy$1;

    invoke-direct {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2$invokeSuspend$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v1, v5}, Lfb/n;->a0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v4

    move-object v4, v1

    move v1, p1

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v6, "component2(...)"

    invoke-static {p1, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isChecked()Z

    move-result v6

    if-ne v6, v1, :cond_3

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->L$1:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->Z$0:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;->label:I

    invoke-static {v5, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->access$handleViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_4
    return-object v2
.end method
