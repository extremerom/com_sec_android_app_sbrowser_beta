.class public abstract synthetic Lg1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/view/AttachedSurfaceControl;)I
    .locals 0

    invoke-interface {p0}, Landroid/view/AttachedSurfaceControl;->getBufferTransformHint()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_START:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic c(Landroid/view/AttachedSurfaceControl;Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/AttachedSurfaceControl;->removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V

    return-void
.end method

.method public static bridge synthetic d()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_DROP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic e(Landroid/view/AttachedSurfaceControl;Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/AttachedSurfaceControl;->addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V

    return-void
.end method

.method public static bridge synthetic f()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_CANCEL:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method
