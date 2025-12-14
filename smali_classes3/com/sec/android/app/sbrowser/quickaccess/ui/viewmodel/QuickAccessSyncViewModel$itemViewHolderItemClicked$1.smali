.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemViewHolderItemClicked(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ldb/r;",
        "<anonymous>",
        "()V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.ui.viewmodel.QuickAccessSyncViewModel$itemViewHolderItemClicked$1"
    f = "QuickAccessSyncViewModel.kt"
    l = {
        0x132
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $clickedItemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->$clickedItemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->$clickedItemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)V

    return-object v0
.end method

.method public final invoke(Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->invoke(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->$clickedItemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$handleItemViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
