.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$initHistoryItems$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$initHistoryItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$initHistoryItems$1$1;->$listAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$initHistoryItems$1$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$initHistoryItems$1$1;->emit(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$initHistoryItems$1$1;->$listAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/h0;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$initHistoryItems$1$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->access$getHistorySubtitleAdapter(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->setVisible(Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
