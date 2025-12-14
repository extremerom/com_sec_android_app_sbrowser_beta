.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u0000 ;2\u00020\u0001:\u0001;B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\'\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0014J\u0017\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\u0015\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001d\u0010\u0014J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\r\u0010!\u001a\u00020\u001e\u00a2\u0006\u0004\u0008!\u0010 J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\"J\u001d\u0010$\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u0011\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010\'\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u001f\u0010*\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008*\u0010(J\u001d\u0010/\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020+2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00101R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008.\u00102R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u00103R\u0018\u00104\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u00106\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00105R\u0018\u00107\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00105R\u0016\u00108\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010:\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u00109\u00a8\u0006<"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "aiViewController",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V",
        "",
        "dy",
        "",
        "duration",
        "Landroid/animation/Animator$AnimatorListener;",
        "listener",
        "Ldb/r;",
        "animateDragViewsByDy",
        "(FJLandroid/animation/Animator$AnimatorListener;)V",
        "initAnimationListener",
        "()V",
        "Landroid/view/View;",
        "view",
        "showSplitViewAnimation",
        "(Landroid/view/View;)V",
        "splitViewContainer",
        "",
        "fromHeight",
        "toHeight",
        "resizeSplitOverViewWithAnimation",
        "(Landroid/view/View;II)V",
        "closeSplitOverViewWithAnimation",
        "showSplitOverViewWithAnimation",
        "closeSplitViewWithAnimation",
        "",
        "isDragRestoreAnimationOngoing",
        "()Z",
        "isMenuContainerAnimationOngoing",
        "(FJ)V",
        "popupMenuContainer",
        "animateMenuContainerAnimation",
        "(ILandroid/view/View;)V",
        "withDuration",
        "animateDragRestore",
        "(FZ)V",
        "withDragCloseDuration",
        "animateDragClose",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;",
        "aiViewWindowHandler",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "splitViewManager",
        "setSubModules",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;",
        "dragRestoreAnimationListener",
        "Landroid/animation/Animator$AnimatorListener;",
        "dragCloseAnimationListener",
        "menuContainerHideShowAnimationListener",
        "dragRestoreAnimationOngoing",
        "Z",
        "menuContainerAnimationOngoing",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

.field private dragCloseAnimationListener:Landroid/animation/Animator$AnimatorListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dragRestoreAnimationListener:Landroid/animation/Animator$AnimatorListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dragRestoreAnimationOngoing:Z

.field private menuContainerAnimationOngoing:Z

.field private menuContainerHideShowAnimationListener:Landroid/animation/Animator$AnimatorListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "aiViewController"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->showSplitViewAnimation$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getAiViewController$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    return-object p0
.end method

.method public static final synthetic access$getSplitViewManager$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    return-object p0
.end method

.method public static final synthetic access$setDragRestoreAnimationOngoing$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragRestoreAnimationOngoing:Z

    return-void
.end method

.method public static final synthetic access$setMenuContainerAnimationOngoing$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->menuContainerAnimationOngoing:Z

    return-void
.end method

.method private final animateDragViewsByDy(FJLandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    const/4 v1, 0x0

    const-string v2, "splitViewManager"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->getSplitViewContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->getSplitViewContainerInitialY()F

    move-result p0

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->resizeSplitOverViewWithAnimation$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->resizeSplitOverViewWithAnimation$lambda$2$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;I)V

    return-void
.end method

.method private static final closeSplitViewWithAnimation$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->shouldShowSplitView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    const/4 p2, 0x0

    const-string v0, "splitViewManager"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->getDefaultWidthForSplitView()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_1

    int-to-float p2, p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->updateMainViewSplitSize(IZ)V

    return-void

    :cond_1
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->closeSplitViewWithAnimation$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final resizeSplitOverViewWithAnimation$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->shouldShowSplitView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance p3, LG6/c;

    const/4 v0, 0x2

    invoke-direct {p3, p1, v0, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final resizeSplitOverViewWithAnimation$lambda$2$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->updateSplitOverHeight(I)V

    return-void

    :cond_0
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final showSplitViewAnimation$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->shouldShowSplitView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    const/4 p1, 0x0

    const-string p2, "splitViewManager"

    if-eqz p0, :cond_2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->getDefaultWidthForSplitView()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->updateMainViewSplitSize(IZ)V

    return-void

    :cond_1
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public animateDragClose(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragCloseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->animateDragViewsByDy(FJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animateDragRestore(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragRestoreAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->animateDragViewsByDy(FJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animateDragViewsByDy(FJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->animateDragViewsByDy(FJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final animateMenuContainerAnimation(ILandroid/view/View;)V
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popupMenuContainer"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->menuContainerHideShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeSplitOverViewWithAnimation(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "splitViewContainer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragCloseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final closeSplitViewWithAnimation(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "splitViewContainer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragRestoreAnimationOngoing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    mul-int/2addr v0, v1

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$closeSplitViewWithAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$closeSplitViewWithAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final initAnimationListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$initAnimationListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$initAnimationListener$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragRestoreAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$initAnimationListener$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$initAnimationListener$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragCloseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$initAnimationListener$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$initAnimationListener$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->menuContainerHideShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public isDragRestoreAnimationOngoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragRestoreAnimationOngoing:Z

    return p0
.end method

.method public final isMenuContainerAnimationOngoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->menuContainerAnimationOngoing:Z

    return p0
.end method

.method public resizeSplitOverViewWithAnimation(Landroid/view/View;II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "splitViewContainer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragRestoreAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->getSplitOverMaximumHeight()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$resizeSplitOverViewWithAnimation$1;

    invoke-direct {v1, p0, p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$resizeSplitOverViewWithAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;II)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setSubModules(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "aiViewWindowHandler"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitViewManager"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    return-void
.end method

.method public showSplitOverViewWithAnimation(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "splitViewContainer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$showSplitOverViewWithAnimation$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$showSplitOverViewWithAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public showSplitViewAnimation(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->getDefaultWidthForSplitView()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int/2addr v0, v1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->dragRestoreAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$showSplitViewAnimation$1;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator$showSplitViewAnimation$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
