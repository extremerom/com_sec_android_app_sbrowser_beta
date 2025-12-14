.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const v0, 0x8000

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
