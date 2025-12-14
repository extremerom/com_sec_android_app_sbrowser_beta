.class public Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"


# instance fields
.field private mContentDescriptiion:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->mContentDescriptiion:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setContentDescription(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setChecked(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f140e6f

    goto :goto_0

    :cond_0
    const p1, 0x7f14081f

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescription(ZLjava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->mContentDescriptiion:Ljava/lang/String;

    if-eqz p1, :cond_0

    const p1, 0x7f140e6f

    goto :goto_0

    :cond_0
    const p1, 0x7f14081f

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v0, ", "

    invoke-static {p1, v0, p2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setChecked(Z)V

    return-void
.end method

.method public toggle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setChecked(ZLjava/lang/String;)V

    return-void
.end method
