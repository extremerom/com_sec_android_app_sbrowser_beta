.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$5;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->showSelectAllCheckBoxAnimation()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->r(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->q(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->v(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->w(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->r(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;Z)V

    return-void
.end method
