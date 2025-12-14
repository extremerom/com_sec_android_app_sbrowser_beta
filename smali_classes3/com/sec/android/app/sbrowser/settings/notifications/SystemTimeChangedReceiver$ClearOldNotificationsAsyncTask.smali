.class Lcom/sec/android/app/sbrowser/settings/notifications/SystemTimeChangedReceiver$ClearOldNotificationsAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/SystemTimeChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearOldNotificationsAsyncTask"
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
.field private mRecieverContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SystemTimeChangedReceiver$ClearOldNotificationsAsyncTask;->mRecieverContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/SystemTimeChangedReceiver$ClearOldNotificationsAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SystemTimeChangedReceiver$ClearOldNotificationsAsyncTask;->mRecieverContext:Landroid/content/Context;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "notification_clear_by_days"

    const/16 v1, 0xe

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SystemTimeChangedReceiver$ClearOldNotificationsAsyncTask;->mRecieverContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->clearAllOldNotifications(Landroid/content/Context;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/SystemTimeChangedReceiver$ClearOldNotificationsAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p0, "SystemTimeChangedReceiver"

    const-string p1, "Async Task - All old notifications cleared"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string p0, "SystemTimeChangedReceiver"

    const-string v0, "Async task - starting to delete notifications"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
