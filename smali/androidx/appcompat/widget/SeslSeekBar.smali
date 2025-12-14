.class public Landroidx/appcompat/widget/SeslSeekBar;
.super Lt/J0;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# instance fields
.field public r1:I

.field public s1:Lt/X0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt/J0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    invoke-super {p0}, Lt/J0;->D()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->s1:Lt/X0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lt/X0;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(IFZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lt/J0;->j(IFZ)V

    iget-boolean p2, p0, Lt/J0;->o1:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/SeslSeekBar;->s1:Lt/X0;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0, p1, p3}, Lt/X0;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Landroidx/appcompat/widget/SeslSeekBar;->r1:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->r1:I

    iget-object p2, p0, Landroidx/appcompat/widget/SeslSeekBar;->s1:Lt/X0;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0, p1, p3}, Lt/X0;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lt/J0;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Lt/X0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->s1:Lt/X0;

    return-void
.end method

.method public setOnSeekBarHoverListener(Lt/Y0;)V
    .locals 0

    return-void
.end method
