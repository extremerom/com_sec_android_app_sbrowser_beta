.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private getTag(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p3

    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private performCustomAction(Landroid/view/View;II)V
    .locals 2

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;->performCustomActionReorder(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const v0, 0x7f0b07bc

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0b07b2

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0b07bf

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->getTag(Landroid/view/View;II)I

    move-result v2

    const v3, 0x7f0b07c0

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->getTag(Landroid/view/View;II)I

    move-result v3

    const v5, 0x7f0b07be

    invoke-direct {p0, p1, v5, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->getTag(Landroid/view/View;II)I

    move-result p0

    if-eqz v0, :cond_0

    if-lt v2, v3, :cond_0

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v6, 0x7f0b07bd

    invoke-direct {v5, v6, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    if-eqz v1, :cond_1

    sub-int v0, p0, v3

    if-ge v2, v0, :cond_1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x7f0b07b3

    invoke-direct {v0, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    if-le v3, v4, :cond_3

    const v0, 0x7f0b07b4

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    rem-int v1, v2, v3

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x7f0b07b5

    invoke-direct {v1, v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    const v0, 0x7f0b07b6

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    add-int/lit8 v1, v2, 0x1

    rem-int/2addr v1, v3

    if-eqz v1, :cond_3

    add-int/lit8 v1, p0, -0x1

    if-ge v2, v1, :cond_3

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f0b07b7

    invoke-direct {v1, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    const v0, 0x7f0b07b8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0b07ba

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f0b07b9

    invoke-direct {v1, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_4
    if-eqz p1, :cond_5

    sub-int/2addr p0, v4

    if-ge v2, p0, :cond_5

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v0, 0x7f0b07bb

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_5
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f0b07bf

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->getTag(Landroid/view/View;II)I

    move-result v0

    const v3, 0x7f0b07c0

    invoke-direct {p0, p1, v3, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->getTag(Landroid/view/View;II)I

    move-result v3

    const v4, 0x7f141026

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    sub-int v2, v0, v3

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    const v2, 0x7f0b07be

    invoke-direct {p0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->getTag(Landroid/view/View;II)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    add-int/2addr v3, v0

    invoke-direct {p0, p1, v0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x7f0b07b3
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCustomActionListener(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;

    return-void
.end method
