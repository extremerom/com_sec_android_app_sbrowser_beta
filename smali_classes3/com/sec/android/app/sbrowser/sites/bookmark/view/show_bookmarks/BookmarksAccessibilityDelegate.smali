.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate$CustomFocusChangeListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate$CustomFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;

    return-object v0
.end method

.method private performCustomAction(Landroid/view/View;II)V
    .locals 2

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate$CustomFocusChangeListener;

    invoke-interface {v0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate$CustomFocusChangeListener;->performCustomAction(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static setAccessibilityDelegateWithChildViews(Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->setAccessibilityDelegate(Landroid/view/View;)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->setAccessibilityDelegateWithChildViews(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate$CustomFocusChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const p0, 0x7f0b01ac

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const v0, 0x7f0b01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0b01a6

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0b01aa

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f0b01ad

    invoke-direct {v2, v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    if-eqz v0, :cond_1

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0b01a9

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v0, 0x7f0b01a7

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    if-eqz p1, :cond_3

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v0, 0x7f0b01ab

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const v0, 0x7f0b01af

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    goto :goto_1

    :pswitch_2
    const v3, 0x7f0b01ae

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->performCustomAction(Landroid/view/View;II)V

    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01a7
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeListener(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate$CustomFocusChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
