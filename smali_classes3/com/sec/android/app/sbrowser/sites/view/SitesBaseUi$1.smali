.class Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/N0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->lambda$onInterceptTouchEvent$0()V

    return-void
.end method

.method private synthetic lambda$onInterceptTouchEvent$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->scrollListIfRequired()V

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

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf1/w0;->a:Lf1/u0;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lf1/u0;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iput-boolean p1, p2, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->performItemTouchAction()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-boolean v0, p2, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActionbarAnimRunning:Z

    if-eqz v0, :cond_3

    return p1

    :cond_3
    iget-object p2, p2, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/view/a;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->c(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Z)V

    :goto_0
    return p1
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
