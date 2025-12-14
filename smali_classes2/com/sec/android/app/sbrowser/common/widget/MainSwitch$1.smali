.class Lcom/sec/android/app/sbrowser/common/widget/MainSwitch$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    const-class p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->d(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->e(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->f(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
