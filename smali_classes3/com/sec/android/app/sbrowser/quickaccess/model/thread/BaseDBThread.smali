.class abstract Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/DefaultTaskExecutor;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;

    return-void
.end method
