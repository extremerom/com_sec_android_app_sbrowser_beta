.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->i(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->h(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_8

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->h(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->getItemCount()I

    move-result p4

    if-lt p3, p4, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->b(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p4

    if-ne p4, p3, :cond_3

    return-void

    :cond_3
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p4, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateCheckedItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result p4

    if-nez p4, :cond_6

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->j(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p4, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateCheckedItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->b(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->e(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateSelectAllCheckBox()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->e(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateSelectAllText()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    return-void
.end method
