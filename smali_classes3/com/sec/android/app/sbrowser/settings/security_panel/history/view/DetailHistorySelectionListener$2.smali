.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    const-string p1, "longpress : onItemSelected position: "

    const-string p4, "DetailHistorySelectionListener"

    invoke-static {p3, p1, p4}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->isActionMode()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->updateSelectedList(I)Z

    move-result p1

    const p3, 0x7f0b03f3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->updateContentDescription(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->updateSelectAllCheckBox(Z)V

    :cond_1
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->setLongPressDragging(Z)V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->setLongPressDragging(Z)V

    return-void
.end method
