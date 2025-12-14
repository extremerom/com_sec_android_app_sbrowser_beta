.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/N0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->lambda$onInterceptTouchEvent$0()V

    return-void
.end method

.method private synthetic lambda$onInterceptTouchEvent$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->t(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->i(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;

    const/4 v1, 0x0

    invoke-direct {p2, v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->t(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Z)V

    :goto_0
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
