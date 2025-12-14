.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$5;
.super LY2/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setSceneAnimation(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;

.field final synthetic val$mNotificationSearchListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$5;->val$listener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$5;->val$mNotificationSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(LY2/f0;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$5;->val$listener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;->onComplete()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$5;->val$mNotificationSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onTransitionEnd(LY2/f0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$5;->val$listener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;->onComplete()V

    return-void
.end method
