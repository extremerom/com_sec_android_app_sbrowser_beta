.class public abstract Lcom/google/cardboard/sdk/qrcode/AsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PARAM:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/cardboard/sdk/qrcode/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->lambda$execute$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/cardboard/sdk/qrcode/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->lambda$execute$1(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$execute$1(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->doInBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/cardboard/sdk/qrcode/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/google/cardboard/sdk/qrcode/a;-><init>(Lcom/google/cardboard/sdk/qrcode/AsyncTask;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public abstract doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPARAM;)TRESU",
            "LT;"
        }
    .end annotation
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPARAM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/cardboard/sdk/qrcode/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/cardboard/sdk/qrcode/a;-><init>(Lcom/google/cardboard/sdk/qrcode/AsyncTask;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESU",
            "LT;",
            ")V"
        }
    .end annotation
.end method
