.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setSPenMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1",
        "Landroidx/recyclerview/widget/Z0;",
        "",
        "startX",
        "startY",
        "Ldb/r;",
        "onMultiSelectStart",
        "(II)V",
        "endX",
        "endY",
        "onMultiSelectStop",
        "multiSelectionStartIndex",
        "I",
        "multiSelectionEndIndex",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private multiSelectionEndIndex:I

.field private multiSelectionStartIndex:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionStartIndex:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionEndIndex:I

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionEndIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->access$getChildAt(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;II)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionStartIndex:I

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onMultiSelectStop(II)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->access$getChildAt(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;II)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionEndIndex:I

    iget p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionStartIndex:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    if-gt p2, p1, :cond_2

    new-instance p1, Lzb/d;

    iget p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionStartIndex:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionEndIndex:I

    const/4 v3, 0x1

    invoke-direct {p1, p2, v2, v3}, Lzb/b;-><init>(III)V

    goto :goto_0

    :cond_2
    new-instance v2, Lzb/b;

    invoke-direct {v2, p2, p1, v1}, Lzb/b;-><init>(III)V

    move-object p1, v2

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->access$getAdapter$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

    move-result-object p2

    const-string v2, "adapter"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lfb/n;->X(Ljava/lang/Iterable;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->access$getAdapter$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;->getItemListener()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;->getOnItemsSelected()Lsb/k;

    move-result-object p1

    invoke-interface {p1, p2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionStartIndex:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionEndIndex:I

    return-void

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionStartIndex:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;->multiSelectionEndIndex:I

    return-void

    :cond_8
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method
