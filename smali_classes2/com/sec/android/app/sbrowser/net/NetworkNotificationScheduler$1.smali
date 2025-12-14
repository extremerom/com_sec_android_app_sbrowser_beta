.class Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->setObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelScheduleForNotification(I)V
    .locals 2

    const-string v0, "onCancelScheduleForNotification -- "

    const-string v1, "NetworkNotificationScheduler"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->b(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->d(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->c(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->cancelTask()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->b(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->b(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->b(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->d(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->schedule(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->e(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->e(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScheduleNetworkAvailableNotification(ILjava/lang/String;)V
    .locals 2

    const-string v0, "onScheduleNetworkAvailableNotification -- "

    const-string v1, "NetworkNotificationScheduler"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;->this$0:Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->schedule(ILjava/lang/String;)V

    return-void
.end method
