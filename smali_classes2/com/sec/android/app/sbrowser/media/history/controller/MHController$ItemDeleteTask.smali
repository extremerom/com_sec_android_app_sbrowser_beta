.class Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/controller/MHController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemDeleteTask"
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;-><init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string p1, "TAG"

    const-string v0, "ItemDeleteTask::doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->a(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onDeleteStarted()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "TAG"

    const-string v0, "ItemDeleteTask::onPostExecute"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->a(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onDeleteCompleted()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->b(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V

    return-void
.end method
