.class Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer$1;
.super Lf1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    invoke-direct {p0}, Lf1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object p1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->s(Z)V

    sget-object p1, Lg1/d;->o:Lg1/d;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object p1, Lg1/d;->p:Lg1/d;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object p1, Lg1/d;->I:Lg1/d;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mAccessibilityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;->getContentDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lf1/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, p2, p3}, Lt/J0;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
