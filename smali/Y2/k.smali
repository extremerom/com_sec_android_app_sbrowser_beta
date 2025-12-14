.class public final LY2/k;
.super LY2/f0;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android:clipBounds:clip"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LY2/k;->a:[Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LY2/k;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public static f(LY2/q0;Z)V
    .locals 3

    iget-object v0, p0, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const p1, 0x7f0b0dd6

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_2
    sget-object v2, LY2/k;->b:Landroid/graphics/Rect;

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    iget-object p0, p0, LY2/q0;->a:Ljava/util/HashMap;

    const-string p1, "android:clipBounds:clip"

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_4

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:clipBounds:bounds"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method public final captureEndValues(LY2/q0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, LY2/k;->f(LY2/q0;Z)V

    return-void
.end method

.method public final captureStartValues(LY2/q0;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, LY2/k;->f(LY2/q0;Z)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;LY2/q0;LY2/q0;)Landroid/animation/Animator;
    .locals 5

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    iget-object p2, p2, LY2/q0;->a:Ljava/util/HashMap;

    const-string v0, "android:clipBounds:clip"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p3, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const-string v3, "android:clipBounds:bounds"

    if-nez v2, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object p1

    :cond_4
    iget-object p1, p3, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance p3, LY2/P;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p3, v4}, LY2/P;-><init>(I)V

    iput-object v3, p3, LY2/P;->b:Ljava/lang/Object;

    sget-object v3, LY2/u0;->b:LY2/d;

    filled-new-array {p2, v1}, [Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, v3, p3, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, LY2/j;

    invoke-direct {p3, p1, v2, v0}, LY2/j;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p3}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    return-object p2

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, LY2/k;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public final isSeekingSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
