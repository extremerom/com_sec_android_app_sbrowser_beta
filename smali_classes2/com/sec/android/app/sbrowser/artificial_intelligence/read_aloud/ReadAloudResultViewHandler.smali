.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;

.field private mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

.field private mDragStart:Z

.field private mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

.field private mIsInEditMode:Z

.field private mLastState:I

.field private mPanelMoved:Z

.field private mResultPaneCallback:Lw6/s;

.field private mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->lambda$adjustToolbar$2(Z)V

    return-void
.end method

.method private adjustToolbar(Z)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->lambda$setListenerForResultView$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->lambda$setListenerForResultView$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mIsInEditMode:Z

    return p0
.end method

.method private getPanelPosition()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "bottom"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string p0, "floating"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "side"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getScreenID()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "1001"

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mPanelMoved:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDragStart:Z

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mLastState:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mPanelMoved:Z

    return-void
.end method

.method private synthetic lambda$adjustToolbar$2(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbar(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setListenerForResultView$0(Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateSplitSize(IZ)V

    return-void
.end method

.method private synthetic lambda$setListenerForResultView$1(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateControlButtonsVisibility()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->e()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p2, p6, :cond_1

    if-eq p4, p8, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateControlButtonContainer()V

    :cond_2
    if-ne p5, p9, :cond_3

    if-ne p3, p7, :cond_3

    if-ne p2, p6, :cond_3

    if-eq p4, p8, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    new-instance p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;

    const/4 p6, 0x2

    invoke-direct {p3, p6, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1, v0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->onLayoutChange(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_4
    if-ne p5, p9, :cond_5

    if-eq p4, p8, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInSideMode()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mLastState:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDragStart:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->showResultViewBlurLayout(Z)V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDragStart:Z

    :cond_6
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->adjustToolbar(Z)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->getPanelPosition()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setListenerForResultView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/k;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/k;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public getFloatingPaneLayout()Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    return-object p0
.end method

.method public getToolbar()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    return-object p0
.end method

.method public hideResultView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setClosing(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->d(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateNavigationBarColor()V

    :cond_0
    return-void
.end method

.method public initializeResultView()V
    .locals 4

    const-string v0, "initializeReadAloudResultView()"

    const-string v1, "si__ReadAloudResultViewHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e0612

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    :try_start_0
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->setBlurMode(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set blur effect mode failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->i(ILjava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const v2, 0x7f0b0a00

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->setListenerForResultView()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mPanelMoved:Z

    return-void
.end method

.method public isResultViewInBottomMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResultViewInFloatingMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResultViewInSideMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResultViewShowing()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c:Lw6/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lw6/q;->k()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public sendSALogForResultView()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->getPanelPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "20301"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setResultViewCallback()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mResultPaneCallback:Lw6/s;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mResultPaneCallback:Lw6/s;

    invoke-virtual {v1, v2}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->a(Lw6/s;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->j(Lw6/r;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->h(Lw6/r;)V

    return-void
.end method

.method public setResultViewVisibility(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mIsInEditMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInSideMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateSplitSize(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInSideMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateSplitSize(IZ)V

    :cond_1
    return-void
.end method

.method public shouldCloseResultView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mIsInEditMode:Z

    return-void
.end method

.method public showResultView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->k(Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;)V

    :cond_0
    return-void
.end method

.method public updateResultViewOnCurrentTabChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInSideMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateSplitSize(IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateSplitSize(IZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInSideMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c(Z)V

    :cond_1
    return-void
.end method

.method public updateResultViewOnEditModeChanged(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mIsInEditMode:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->e()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInBottomMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c(Z)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->setResultViewVisibility(I)V

    :goto_1
    return-void
.end method

.method public updateResultViewOnHide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInBottomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->mFloatingPaneLayout:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c(Z)V

    :cond_0
    return-void
.end method
