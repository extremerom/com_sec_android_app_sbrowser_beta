.class public final LY2/p;
.super LY2/f0;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:changeScroll:x"

    const-string v1, "android:changeScroll:y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LY2/p;->a:[Ljava/lang/String;

    return-void
.end method

.method public static f(LY2/q0;)V
    .locals 4

    iget-object v0, p0, LY2/q0;->a:Ljava/util/HashMap;

    iget-object v1, p0, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeScroll:x"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:changeScroll:y"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final captureEndValues(LY2/q0;)V
    .locals 0

    invoke-static {p1}, LY2/p;->f(LY2/q0;)V

    return-void
.end method

.method public final captureStartValues(LY2/q0;)V
    .locals 0

    invoke-static {p1}, LY2/p;->f(LY2/q0;)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;LY2/q0;LY2/q0;)Landroid/animation/Animator;
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p2, LY2/q0;->a:Ljava/util/HashMap;

    const-string p2, "android:changeScroll:x"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p3, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v2, "android:changeScroll:y"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p3, p3, LY2/q0;->b:Landroid/view/View;

    if-eq v0, p2, :cond_1

    invoke-virtual {p3, v0}, Landroid/view/View;->setScrollX(I)V

    const-string v2, "scrollX"

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-static {p3, v2, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    if-eq p1, v1, :cond_2

    invoke-virtual {p3, p1}, Landroid/view/View;->setScrollY(I)V

    const-string p0, "scrollY"

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p3, p0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :cond_2
    if-nez p2, :cond_3

    move-object p2, p0

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object p0, p3, p2

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object p2, p1

    :goto_1
    return-object p2

    :cond_5
    :goto_2
    return-object p0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, LY2/p;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public final isSeekingSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
