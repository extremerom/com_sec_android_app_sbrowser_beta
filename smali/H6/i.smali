.class public final LH6/i;
.super Lf1/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LH6/i;->a:I

    iput-object p2, p0, LH6/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lf1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget v0, p0, LH6/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, LH6/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p0, p0, Lcom/google/android/material/internal/CheckableImageButton;->a:Z

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, LH6/i;->b:Ljava/lang/Object;

    iget v2, p0, LH6/i;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lw2/G;

    iget-object p0, v1, Lw2/G;->b:Landroidx/recyclerview/widget/i1;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/i1;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object p0, v1, Lw2/G;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p0

    instance-of v0, p0, Landroidx/preference/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Landroidx/preference/g;

    invoke-virtual {p0, p1}, Landroidx/preference/g;->c(I)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    check-cast v1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p0, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->m(Z)V

    return-void

    :pswitch_1
    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p0, v1, Lcom/google/android/material/internal/CheckableImageButton;->b:Z

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->m(Z)V

    iget-boolean p0, v1, Lcom/google/android/material/internal/CheckableImageButton;->a:Z

    iget-object p1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_2
    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    sget p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v2

    move v4, p0

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge p0, v5, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v5, :cond_4

    invoke-virtual {v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/2addr v4, v0

    :cond_4
    add-int/2addr p0, v0

    goto :goto_1

    :cond_5
    :goto_2
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-boolean p0, p1, Lcom/google/android/material/button/MaterialButton;->l:Z

    invoke-static {v2, v0, v3, v0, p0}, Lg1/f;->a(IIIIZ)Lg1/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->q(Lg1/f;)V

    return-void

    :pswitch_3
    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    check-cast v1, Lcom/google/android/material/datepicker/n;

    iget-object p0, v1, Lcom/google/android/material/datepicker/n;->l:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_6

    const p0, 0x7f14079b

    invoke-virtual {v1, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    const p0, 0x7f140799

    invoke-virtual {v1, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    iget-object p1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_4
    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/high16 p0, 0x100000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    iget-object p0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget v0, p0, LH6/i;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lf1/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_0
    iget-object p0, p0, LH6/i;->b:Ljava/lang/Object;

    check-cast p0, Lw2/G;

    iget-object p0, p0, Lw2/G;->b:Landroidx/recyclerview/widget/i1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/i1;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_1
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object p0, p0, LH6/i;->b:Ljava/lang/Object;

    check-cast p0, LH6/m;

    check-cast p0, LH6/o;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, LH6/m;->b(I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lf1/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    :goto_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
