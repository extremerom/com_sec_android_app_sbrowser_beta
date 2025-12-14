.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;,
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;
    }
.end annotation


# instance fields
.field private mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

.field private mHiddenMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

.field private mIsInCustomActionMode:Z

.field private mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

.field private mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

.field private mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mIsInCustomActionMode:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    return-object v0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mIsInCustomActionMode:Z

    if-nez p0, :cond_1

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v0, 0x7f140762

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b03bc

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    const v0, 0x7f0b03bc

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mIsInCustomActionMode:Z

    const v0, 0x7f0b03c1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const v1, 0x7f0b03c2

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const v2, 0x7f0b03bd

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const v3, 0x7f0b03bf

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "custom action: toolsIndex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " toolbarIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " hiddenIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EditMenuAccessibility"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->setStartPosition(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0b03c0

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public reoderItems(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;->moveMenuItemForCustomAction(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;->getSelectedMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;->addMenuItemForCustomAction(ILandroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->showErrorToastIfNecessary(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;->removeMenuItemForCustomAction()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendAccessibilityEvent: eventType: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditMenuAccessibility"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mIsInCustomActionMode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/16 v2, 0x80

    if-eq p2, v2, :cond_0

    const v2, 0x8000

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0b03c1

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const v3, 0x7f0b03c2

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const v4, 0x7f0b03bd

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p0, v3, v2, v4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->setEndPosition(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const v2, 0x7f0b03be

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->reoderItems(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f140651

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;->finishedCustomAction()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;->finishedCustomAction()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->saveCustomizedMenu()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mIsInCustomActionMode:Z

    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public setEndPosition(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;I)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mHiddenMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mEndPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHiddenMenuEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mHiddenMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    return-void
.end method

.method public setIsInCustomActionMode(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mIsInCustomActionMode:Z

    return-void
.end method

.method public setMoreMenuEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    return-void
.end method

.method public setStartPosition(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;I)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mHiddenMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;->startCustomAction(I)V

    return-void
.end method

.method public setToolbarEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    return-void
.end method
