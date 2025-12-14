.class Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->setContentsLayoutAccessibilityDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f14008e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0b00c1

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0b00c1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->a(Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;)Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;->onPerformAccessibilityActionForSummarize()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
