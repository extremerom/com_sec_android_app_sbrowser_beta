.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteNotificationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

.field final mOriginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSelectAll:Z

.field final mUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;ZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;",
            "Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mUrlList:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mOriginList:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mSelectAll:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mContextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mUrlList:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mOriginList:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->deleteNotificationFromNativeDB(Ljava/util/List;Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mSelectAll:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mUrlList:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;->mOriginList:Ljava/util/List;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->deleteNotification(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
