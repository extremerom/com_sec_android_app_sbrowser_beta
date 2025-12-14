.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$1;
.super Lf1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    invoke-direct {p0}, Lf1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->m(Z)V

    iget-object v1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->n(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->b(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;)I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method
