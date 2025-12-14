.class Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->registerNotificationContentObserver(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result p0

    return p0
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->a(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    move-result-object p1

    const-string p2, "BadgeManager"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->a(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->getUnreadNotificationCount(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->d(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->e(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->c(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->b(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->notifyCountChange(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[NotificationManager] unread notifications updated: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->b(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "[NotificationManager] notification model null"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
