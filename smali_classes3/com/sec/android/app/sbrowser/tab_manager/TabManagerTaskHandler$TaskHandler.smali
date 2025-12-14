.class Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler$TaskHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskHandler"
.end annotation


# instance fields
.field private final mOuterObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler$TaskHandler;->mOuterObject:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler$TaskHandler;->mOuterObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->b(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
