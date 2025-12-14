.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;
.super Landroidx/recyclerview/widget/v;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\t\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000b\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ9\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J/\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;",
        "Landroidx/recyclerview/widget/v;",
        "<init>",
        "()V",
        "Landroidx/recyclerview/widget/h1;",
        "holder",
        "Lkotlin/Function0;",
        "",
        "animate",
        "processBlurView",
        "(Landroidx/recyclerview/widget/h1;Lsb/a;)Z",
        "animateAdd",
        "(Landroidx/recyclerview/widget/h1;)Z",
        "animateRemove",
        "",
        "fromX",
        "fromY",
        "toX",
        "toY",
        "animateMove",
        "(Landroidx/recyclerview/widget/h1;IIII)Z",
        "oldHolder",
        "newHolder",
        "Landroidx/recyclerview/widget/C0;",
        "preLayoutInfo",
        "postLayoutInfo",
        "animateChange",
        "(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/v;-><init>()V

    return-void
.end method

.method private static final animateAdd$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/v;->animateAdd(Landroidx/recyclerview/widget/h1;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private static final animateChange$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/o1;->animateChange(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z

    move-result p0

    return p0
.end method

.method private static final animateMove$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;IIII)Z
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/v;->animateMove(Landroidx/recyclerview/widget/h1;IIII)Z

    move-result p0

    return p0
.end method

.method private static final animateRemove$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/v;->animateRemove(Landroidx/recyclerview/widget/h1;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->animateChange$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->animateRemove$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroidx/recyclerview/widget/h1;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->processBlurView$lambda$5$lambda$4(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;IIII)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->animateMove$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;IIII)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->animateAdd$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    return p0
.end method

.method private final processBlurView(Landroidx/recyclerview/widget/h1;Lsb/a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "Lsb/a;",
            ")Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;

    if-nez v0, :cond_0

    invoke-interface {p2}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;->addListener()V

    invoke-interface {p2}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/y;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/y;-><init>(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/D0;->isRunning(Landroidx/recyclerview/widget/A0;)Z

    return p2
.end method

.method private static final processBlurView$lambda$5$lambda$4(Landroidx/recyclerview/widget/h1;)V
    .locals 0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;->removeListener()V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/h1;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->processBlurView(Landroidx/recyclerview/widget/h1;Lsb/a;)Z

    move-result p0

    return p0
.end method

.method public animateChange(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/C0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/C0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oldHolder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newHolder"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preLayoutInfo"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postLayoutInfo"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)V

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->processBlurView(Landroidx/recyclerview/widget/h1;Lsb/a;)Z

    move-result p0

    return p0
.end method

.method public animateMove(Landroidx/recyclerview/widget/h1;IIII)Z
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/w;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/w;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;IIII)V

    invoke-direct {p0, p1, v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->processBlurView(Landroidx/recyclerview/widget/h1;Lsb/a;)Z

    move-result p0

    return p0
.end method

.method public animateRemove(Landroidx/recyclerview/widget/h1;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->processBlurView(Landroidx/recyclerview/widget/h1;Lsb/a;)Z

    move-result p0

    return p0
.end method
