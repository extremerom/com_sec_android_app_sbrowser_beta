.class Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateSwitchState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

.field final synthetic val$descSwitch:Ljava/lang/String;

.field final synthetic val$saveSignInState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->val$saveSignInState:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->val$descSwitch:Ljava/lang/String;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->r(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->val$saveSignInState:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->val$descSwitch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->q(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->q(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
