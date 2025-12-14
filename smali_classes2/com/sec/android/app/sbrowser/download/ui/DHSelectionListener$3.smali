.class Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->lambda$onChildClick$0(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void
.end method

.method private synthetic lambda$onChildClick$0(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->openDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->k(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->n(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->v(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    :goto_0
    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v3

    const v4, 0x7f0b0441

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->m(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->p(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->w(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->A(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v4, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setCheckItem(ZLcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/widget/CheckBox;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->y(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setHeightToShift(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->y(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setHeightToShift(I)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->w(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->isSelectAllDownloadList()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->checkSelectAllCheckbox(Z)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->C(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateSelectAllText()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateAppBarInfo()V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->m(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->l(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->shouldShowSecretModeDisclaimer()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/q;

    const/4 v2, 0x0

    invoke-direct {p2, v2, p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->B(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;Lcom/sec/android/app/sbrowser/download/ui/q;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->openDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    :goto_2
    const-string p1, "1"

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->t(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->w(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->A(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->w(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->startActionMode(I)V

    :cond_a
    :goto_3
    const-string p1, "0"

    :goto_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p2, "8764"

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getState()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->o(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->onCreateItemContextMenu(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/ContextMenu;)V

    :cond_1
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->t(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->q(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/X0;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->e(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->onChildClick(Landroid/view/View;I)Z

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->w(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->o(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->setTalkbackOnLongPress(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setSelectionForFirstItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->q(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/X0;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->e(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->y(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setHeightToShift(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->w(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    return v2

    :cond_6
    :goto_0
    return v0
.end method
