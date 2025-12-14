.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5",
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


# instance fields
.field private multiSelectionEndIndex:I

.field private multiSelectionStartIndex:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionStartIndex:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionEndIndex:I

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionEndIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->access$getChildAt(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;II)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionStartIndex:I

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onMultiSelectStop(II)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->access$getChildAt(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;II)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionEndIndex:I

    iget p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionStartIndex:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-gt p2, p1, :cond_2

    new-instance p1, Lzb/d;

    iget p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionStartIndex:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionEndIndex:I

    const/4 v3, 0x1

    invoke-direct {p1, p2, v2, v3}, Lzb/b;-><init>(III)V

    goto :goto_0

    :cond_2
    new-instance v2, Lzb/b;

    invoke-direct {v2, p2, p1, v1}, Lzb/b;-><init>(III)V

    move-object p1, v2

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->access$getAdapter$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    move-result-object p2

    const-string v2, "adapter"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lfb/n;->X(Ljava/lang/Iterable;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->access$getAdapter$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;->getListener()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;->getOnItemsSelected()Lsb/n;

    move-result-object v0

    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionStartIndex:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionEndIndex:I

    return-void

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionStartIndex:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;->multiSelectionEndIndex:I

    return-void

    :cond_6
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method
