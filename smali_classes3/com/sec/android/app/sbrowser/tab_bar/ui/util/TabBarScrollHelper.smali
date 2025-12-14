.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;,
        Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Listener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

.field private final mIsRtlLayout:Z

.field private final mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Listener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Listener;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mIsRtlLayout:Z

    return-void
.end method

.method private calculateScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)I
    .locals 12
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleChildLeft(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleChildRight(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleLeftByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleRightByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getScrollX()I

    move-result p0

    int-to-double v8, p0

    cmpg-double p0, v0, v4

    const-string v10, "[calculateScroll] : "

    const-string v11, "TabBarScrollHelper"

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> scroll to right"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-double/2addr v0, v4

    add-double/2addr v8, v0

    goto :goto_0

    :cond_0
    cmpg-double p0, v6, v2

    if-gez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> scroll to left"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-double/2addr v2, v6

    add-double/2addr v8, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> do not scroll"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    double-to-int p0, v8

    return p0
.end method

.method private getVisibleChildLeft(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getLeftEdge()I

    move-result p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getStartMargin()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-double p0, p0

    return-wide p0
.end method

.method private getVisibleChildRight(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getRightEdge()I

    move-result p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getEndMargin()I

    move-result p1

    add-int/2addr p1, p0

    int-to-double p0, p1

    return-wide p0
.end method

.method private getVisibleLeftByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getScrollX()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->isWrapLayoutNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->isRTL()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->isScrollButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isInExpandedGroup()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getScrollHeaderWidth()D

    move-result-wide p0

    :goto_0
    add-double/2addr v0, p0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getOverlappedPadding()D

    move-result-wide p0

    goto :goto_0

    :cond_3
    :goto_2
    return-wide v0
.end method

.method private getVisibleRightByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getScrollX()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getTabBarWidth()D

    move-result-wide v2

    add-double/2addr v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->isWrapLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->isLTR()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->isScrollButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isInExpandedGroup()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getScrollHeaderWidth()D

    move-result-wide p0

    :goto_0
    sub-double/2addr v2, p0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;->getOverlappedPadding()D

    move-result-wide p0

    goto :goto_0

    :cond_3
    :goto_2
    return-wide v2
.end method

.method private isLTR()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mIsRtlLayout:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isRTL()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mIsRtlLayout:Z

    return p0
.end method


# virtual methods
.method public isVisibleByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z
    .locals 10
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleChildLeft(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleChildRight(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleLeftByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->getVisibleRightByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)D

    move-result-wide v6

    cmpg-double p0, v4, v0

    if-gtz p0, :cond_0

    cmpg-double p0, v2, v6

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[isVisibleByScroll] : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " range ("

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ") target ("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ") -> "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabBarScrollHelper"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public scrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->isVisibleByScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->calculateScroll(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[scrollToChild] to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", with anim :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TabBarScrollHelper"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Listener;

    invoke-interface {p0, v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Listener;->scrollTo(IZ)V

    return-void
.end method
