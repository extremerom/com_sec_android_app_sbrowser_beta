.class public final Lt/Q0;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    iget p0, p1, Landroidx/appcompat/widget/SeslProgressBar;->i0:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    sget-object p0, Landroidx/appcompat/widget/SeslProgressBar;->q0:Landroid/view/animation/DecelerateInterpolator;

    const p0, 0x102000d

    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/widget/SeslProgressBar;->o(FI)V

    iput p2, p1, Landroidx/appcompat/widget/SeslProgressBar;->i0:F

    return-void
.end method
