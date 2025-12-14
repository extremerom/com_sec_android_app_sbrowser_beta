.class Lcom/sec/android/app/sbrowser/main_view/MainViewLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onContentsLayoutChanged(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onPerformAccessibilityActionForSummarize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const v1, 0x7f0b0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->performMenuItem(ILandroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
