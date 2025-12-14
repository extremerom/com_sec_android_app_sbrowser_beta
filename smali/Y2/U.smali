.class public final LY2/U;
.super LY2/A0;
.source "SourceFile"


# static fields
.field public static final d:Landroid/view/animation/DecelerateInterpolator;

.field public static final e:Landroid/view/animation/AccelerateInterpolator;

.field public static final f:LY2/S;

.field public static final g:LY2/S;

.field public static final h:LY2/T;

.field public static final i:LY2/S;

.field public static final j:LY2/S;

.field public static final k:LY2/T;


# instance fields
.field public c:LY2/V;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, LY2/U;->d:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, LY2/U;->e:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, LY2/S;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LY2/S;-><init>(I)V

    sput-object v0, LY2/U;->f:LY2/S;

    new-instance v0, LY2/S;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LY2/S;-><init>(I)V

    sput-object v0, LY2/U;->g:LY2/S;

    new-instance v0, LY2/T;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LY2/T;-><init>(I)V

    sput-object v0, LY2/U;->h:LY2/T;

    new-instance v0, LY2/S;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LY2/S;-><init>(I)V

    sput-object v0, LY2/U;->i:LY2/S;

    new-instance v0, LY2/S;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LY2/S;-><init>(I)V

    sput-object v0, LY2/U;->j:LY2/S;

    new-instance v0, LY2/T;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LY2/T;-><init>(I)V

    sput-object v0, LY2/U;->k:LY2/T;

    return-void
.end method


# virtual methods
.method public final captureEndValues(LY2/q0;)V
    .locals 1

    invoke-static {p1}, LY2/A0;->f(LY2/q0;)V

    iget-object p0, p1, LY2/q0;->b:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p1, LY2/q0;->a:Ljava/util/HashMap;

    const-string p1, "android:slide:screenPosition"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final captureStartValues(LY2/q0;)V
    .locals 1

    invoke-static {p1}, LY2/A0;->f(LY2/q0;)V

    iget-object p0, p1, LY2/q0;->b:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p1, LY2/q0;->a:Ljava/util/HashMap;

    const-string p1, "android:slide:screenPosition"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;Landroid/view/View;LY2/q0;LY2/q0;)Landroid/animation/ObjectAnimator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p3, p4, LY2/q0;->a:Ljava/util/HashMap;

    const-string v0, "android:slide:screenPosition"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iget-object v0, p0, LY2/U;->c:LY2/V;

    invoke-virtual {v0, p2, p1}, LY2/V;->c(Landroid/view/View;Landroid/view/ViewGroup;)F

    move-result v4

    iget-object v0, p0, LY2/U;->c:LY2/V;

    invoke-virtual {v0, p2, p1}, LY2/V;->d(Landroid/view/View;Landroid/view/ViewGroup;)F

    move-result v5

    const/4 p1, 0x0

    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, LY2/U;->d:Landroid/view/animation/DecelerateInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    invoke-static/range {v0 .. v9}, LY2/V;->b(Landroid/view/View;LY2/q0;IIFFFFLandroid/view/animation/BaseInterpolator;LY2/A0;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final i(Landroid/view/ViewGroup;Landroid/view/View;LY2/q0;LY2/q0;)Landroid/animation/ObjectAnimator;
    .locals 10

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p4, p3, LY2/q0;->a:Ljava/util/HashMap;

    const-string v0, "android:slide:screenPosition"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v0, p0, LY2/U;->c:LY2/V;

    invoke-virtual {v0, p2, p1}, LY2/V;->c(Landroid/view/View;Landroid/view/ViewGroup;)F

    move-result v6

    iget-object v0, p0, LY2/U;->c:LY2/V;

    invoke-virtual {v0, p2, p1}, LY2/V;->d(Landroid/view/View;Landroid/view/ViewGroup;)F

    move-result v7

    const/4 p1, 0x0

    aget v2, p4, p1

    const/4 p1, 0x1

    aget v3, p4, p1

    sget-object v8, LY2/U;->e:Landroid/view/animation/AccelerateInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    invoke-static/range {v0 .. v9}, LY2/V;->b(Landroid/view/View;LY2/q0;IIFFFFLandroid/view/animation/BaseInterpolator;LY2/A0;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final isSeekingSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
