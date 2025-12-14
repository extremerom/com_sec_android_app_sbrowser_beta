.class Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->initPopupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getItemType(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;->onOpenHistoryClicked()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;->onItemClicked(Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    return-void
.end method
