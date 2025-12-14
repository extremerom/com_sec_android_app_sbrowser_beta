.class Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MHDataBaseAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->mType:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->doInBackground([Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->d()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is released"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v2, 0x0

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->d()Ljava/lang/String;

    move-result-object p0

    const-string p1, "params[0] is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->mType:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->INSERT:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[MediaHistory] Insert play info"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    aget-object p1, p1, v2

    invoke-static {v3, v0, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->c(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->deleteMediaHistoryDataIfNecessary(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->d()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method
