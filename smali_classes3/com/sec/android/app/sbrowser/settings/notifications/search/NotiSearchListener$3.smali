.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->e(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->i(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->j(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateCheckedItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateSelectAllCheckBox()V

    return v3

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setPrevSelectedIndex(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->setHeightToShift(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->startActionModeWithSelection(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    return v3
.end method
