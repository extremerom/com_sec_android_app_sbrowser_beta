.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;
.super LY2/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->startTransitionAnimation(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$OnMyTransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(LY2/f0;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->mTransitionListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$OnMyTransitionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$OnMyTransitionListener;->onComplete()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->n(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->mIsDeleteAnimOnGoing:Z

    return-void
.end method

.method public onTransitionEnd(LY2/f0;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->mTransitionListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$OnMyTransitionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$OnMyTransitionListener;->onComplete()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->mIsDeleteAnimOnGoing:Z

    return-void
.end method

.method public onTransitionStart(LY2/f0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->mIsDeleteAnimOnGoing:Z

    return-void
.end method
