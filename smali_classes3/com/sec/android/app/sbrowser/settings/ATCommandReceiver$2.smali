.class Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$2;->this$0:Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const-string p1, "ATT_COMMAND_BOOKMARK_SIZE::doInBackground"

    const-string v0, "ATCommandReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$2;->this$0:Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->a(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->getBookmarkURLNodeCountATCommand(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long v5, v1, v3

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    const-wide/16 v1, 0x1

    add-long/2addr v5, v1

    :cond_0
    const-string p1, "onReceive BOOKMARK SIZE "

    invoke-static {v5, v6, p1, v0}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$2;->this$0:Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->c(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
