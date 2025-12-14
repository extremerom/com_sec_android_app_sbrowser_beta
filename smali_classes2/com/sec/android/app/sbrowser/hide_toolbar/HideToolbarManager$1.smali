.class Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->initBixbyInterativeGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;->this$0:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;->lambda$onFinished$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;->lambda$onStarted$0()V

    return-void
.end method

.method private synthetic lambda$onFinished$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;->this$0:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setToolbarFixed(Z)V

    return-void
.end method

.method private synthetic lambda$onStarted$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;->this$0:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setToolbarFixed(Z)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/f;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStarted()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/f;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
