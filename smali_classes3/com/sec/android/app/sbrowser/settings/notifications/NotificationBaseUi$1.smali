.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$1;
.super Landroidx/recyclerview/widget/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->initializeListView(Z)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->s(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->t(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;Z)V

    return-void
.end method
