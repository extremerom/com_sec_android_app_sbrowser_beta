.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->setSeslOnMultiSelectedListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->f(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->g(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->h(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->g(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->h(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->f(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result p1

    const-string p2, "DetailHistorySelectionListener"

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result p1

    if-ne p1, v0, :cond_1

    move v3, v2

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->g(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result v3

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->f(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result v4

    if-le v3, v4, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I

    move-result v0

    :cond_4
    const-string v3, "[onMultiSelectStop] start : "

    const-string v4, ", end : "

    invoke-static {p1, v0, v3, v4, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    :goto_0
    if-gt p1, v0, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->updateSelectedList(I)Z

    move-result v4

    add-int/lit8 v3, v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(onMultiSelectStop) selected ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v3, :cond_7

    const-string p0, "[onMultiSelectStop] NO items selected"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->isActionMode()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->createSelectionMode(Z)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->updateCheckedState()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->updateSelectAllCheckBox(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
