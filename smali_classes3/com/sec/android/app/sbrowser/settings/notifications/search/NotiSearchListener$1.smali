.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->setSPenMultiSelectionListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getHelper()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->getChildViewAt(IILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->g(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->f(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->g(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSearchEditTextView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getHelper()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->getChildViewAt(IILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->i(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSelectedSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->f(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    if-ne p1, v1, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->g(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->f(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result v4

    if-ge p1, v4, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->g(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v4, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->f(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSelectedItemCount()I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result v4

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I

    move-result v5

    if-gt v4, v5, :cond_b

    if-ltz v4, :cond_a

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {p2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v1

    goto :goto_1

    :cond_8
    move v6, v2

    :goto_1
    add-int/2addr p1, v6

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->setChecked(Z)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-eqz v0, :cond_c

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSpenSelectedSearchResultList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_c
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->setSelectedItemCount(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->j(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->startDeleteMode()V

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->h(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setTouchActionDowned(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->updateSelectAllCheckBox()V

    return-void
.end method
