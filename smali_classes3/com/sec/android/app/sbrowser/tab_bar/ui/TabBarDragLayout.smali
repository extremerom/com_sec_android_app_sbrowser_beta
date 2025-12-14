.class public abstract Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;
.super Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0007\u0008\'\u0018\u0000 >2\u00020\u00012\u00020\u0002:\u0001>B\u001b\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000bJ\u000f\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u000bJ\'\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008 \u0010\u0019J\u001f\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0019J\u0017\u0010\'\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010&\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008&\u0010\u000bJ\u0017\u0010)\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008)\u0010\u000fJ\u0017\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008,\u0010-J9\u00101\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010.\u001a\u00020+2\u0008\u00100\u001a\u0004\u0018\u00010/2\u0006\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0013H&\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\tH&\u00a2\u0006\u0004\u00083\u0010\u000bJ\u0017\u00104\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u0013H&\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0013H&\u00a2\u0006\u0004\u00086\u00107J\u0015\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u001308H&\u00a2\u0006\u0004\u00089\u0010:J\u0015\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u001308H&\u00a2\u0006\u0004\u0008;\u0010:R\u0016\u0010<\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u00a8\u0006?"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;",
        "Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "onDragStarted",
        "()Z",
        "Landroid/view/DragEvent;",
        "event",
        "onDragLocation",
        "(Landroid/view/DragEvent;)Z",
        "onDrop",
        "",
        "x",
        "",
        "findIndex",
        "(F)I",
        "onDragEnded",
        "Ldb/r;",
        "restoreTabButtonViewIfNeeded",
        "()V",
        "onDragExited",
        "isIncognito",
        "groupColor",
        "index",
        "addDummyTabButton",
        "(ZII)V",
        "onFinishInflate",
        "Landroid/view/View;",
        "v",
        "onDrag",
        "(Landroid/view/View;Landroid/view/DragEvent;)Z",
        "onTabTearingFinished",
        "isTabTearing",
        "setIsTabTearing",
        "(Z)V",
        "isInTabBarArea",
        "tabId",
        "Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;",
        "createTabButton",
        "(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;",
        "tabButton",
        "",
        "groupName",
        "addTabButton",
        "(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V",
        "isSecretModeEnabled",
        "isInTabList",
        "(I)Z",
        "getDefaultGroupColor",
        "()I",
        "",
        "getNormalDummyTabList",
        "()Ljava/util/List;",
        "getSecretDummyTabList",
        "lastDraggedIndex",
        "I",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isTabTearing:Z


# instance fields
.field private lastDraggedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->Companion:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->lastDraggedIndex:I

    return-void
.end method

.method private final addDummyTabButton(ZII)V
    .locals 9

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->getSecretDummyTabList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->getNormalDummyTabList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->createTabButton(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v5

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v6, ""

    move-object v3, p0

    move v4, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateLayout()V

    return-void
.end method

.method private final findIndex(F)I
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    add-float/2addr v0, p0

    cmpl-float p0, v0, p1

    if-lez p0, :cond_1

    return v3

    :cond_1
    return v4

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move v4, v3

    :goto_0
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->shrinkGroupView()V

    :cond_3
    invoke-virtual {v7, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    new-array v8, v5, [I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    aget v8, v8, v3

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-float v9, v5

    div-float/2addr v7, v9

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v10, v8, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v10, :cond_6

    move-object v10, v8

    check-cast v10, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->shrinkGroupView()V

    :cond_6
    new-array v10, v5, [I

    invoke-virtual {v8, v10}, Landroid/view/View;->getLocationInWindow([I)V

    aget v10, v10, v3

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    cmpl-float v9, v7, p1

    if-lez v9, :cond_7

    return v4

    :cond_7
    cmpl-float v7, p1, v7

    if-lez v7, :cond_8

    cmpg-float v7, p1, v8

    if-gez v7, :cond_8

    return v6

    :cond_8
    cmpl-float v7, p1, v8

    if-lez v7, :cond_4

    add-int/lit8 v4, v4, 0x2

    if-ne v4, v0, :cond_4

    return v4

    :cond_9
    return v1
.end method

.method private final onDragEnded()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->setIsTabTearing(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private final onDragExited()Z
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->cleanDummyTabButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateLayout()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->lastDraggedIndex:I

    const/4 p0, 0x1

    return p0
.end method

.method private final onDragLocation(Landroid/view/DragEvent;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isSecretModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->supportTabTearing(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->findIndex(F)I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->lastDraggedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->cleanDummyTabButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->getDefaultGroupColor()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->addDummyTabButton(ZII)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->lastDraggedIndex:I

    goto :goto_0

    :cond_1
    if-eq v0, p1, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->cleanDummyTabButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->getDefaultGroupColor()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->addDummyTabButton(ZII)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->lastDraggedIndex:I

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final onDragStarted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isTabTearing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->setIsTabTearing(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateLayout()V

    return v0
.end method

.method private final onDrop(Landroid/view/DragEvent;)Z
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isSecretModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->supportTabTearing(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->cleanDummyTabButtons()V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->findIndex(F)I

    move-result p1

    const-string v3, "content_label"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->setIsTabTearing(Z)V

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "_"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nextToken(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p0

    const-string v2, "onDrop(): move tab -> (id: "

    const-string v4, ", at "

    const-string v5, ") from instance "

    invoke-static {v1, p1, v2, v4, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to instance "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TabBarDragLayout"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceUtil;->moveTabToTargetWindow(IIII)V

    :cond_4
    return v3
.end method

.method private final restoreTabButtonViewIfNeeded()V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->getTearingView()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->getTearingView()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.tab_bar.ui.TabButtonView"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isInTabList(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isIncognitoChild()Z

    move-result v3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupColorId()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getIndex()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public abstract addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V
    .param p2    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract createTabButton(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public bridge synthetic getCurrentWidth()D
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->getCurrentWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getDefaultGroupColor()I
.end method

.method public bridge synthetic getLayout()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->getLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public abstract getNormalDummyTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSecretDummyTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public isInTabBarArea(Landroid/view/DragEvent;)Z
    .locals 7
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_3

    move-object v4, v2

    check-cast v4, Landroid/app/Activity;

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-ne v2, v3, :cond_4

    :goto_2
    move v2, v5

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v2

    :goto_3
    int-to-float v2, v2

    add-float/2addr p1, v2

    aget v2, v0, v5

    int-to-float v4, v2

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    goto :goto_4

    :cond_6
    aget v0, v0, v3

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    goto :goto_4

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v5
.end method

.method public abstract isInTabList(I)Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public isTabTearing()Z
    .locals 0

    sget-boolean p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isTabTearing:Z

    return p0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->onDragExited()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->onDragEnded()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->onDrop(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->onDragLocation(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->onDragStarted()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->onFinishInflate()V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public onTabTearingFinished()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->setIsTabTearing(Z)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->cleanDummyTabButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->restoreTabButtonViewIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->resetTearingView()V

    return-void
.end method

.method public bridge synthetic setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    return-void
.end method

.method public setIsTabTearing(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->isTabTearing:Z

    return-void
.end method

.method public bridge synthetic setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    return-void
.end method
