.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionFeature;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeaturePositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;

.field private final mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

.field private final mOptionDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;

.field private final mOptionListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;

.field private mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

.field private final mTransService:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeatureMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeaturePositionMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mTransService:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance p1, Lcom/google/firebase/messaging/z;

    const/4 p2, 0x6

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mOptionDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;

    new-instance p1, LHa/a;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p0, p3}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mOptionListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->lambda$new$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->lambda$initPopupView$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->lambda$new$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private createItemList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f140083

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeatureMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeaturePositionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f14008e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeatureMap:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeaturePositionMap:Ljava/util/Map;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1400b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeatureMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeaturePositionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeatureMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeaturePositionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->lambda$new$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->lambda$initPopupView$3()V

    return-void
.end method

.method private initPopupView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__AIOptionPopup"

    const-string v1, "initPopupView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAiOptionPopupOneUi7()Z

    move-result v0

    const v1, 0x1010300

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi6;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/b;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$initPopupView$3()V
    .locals 2

    const-string v0, "si__AIOptionPopup"

    const-string v1, "AiOptionPopup: onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;->onDismiss()V

    return-void
.end method

.method private synthetic lambda$initPopupView$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mOptionListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;

    invoke-interface {p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;->onOptionClick(I)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;->onLayoutChanged()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-ne p5, p9, :cond_1

    if-ne p6, p10, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->dismiss()V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p2, LG6/e;

    const/16 p3, 0x11

    invoke-direct {p2, p3, p1}, LG6/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeatureMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p1

    :goto_1
    const/4 v0, 0x1

    const-string v1, "si__AIOptionPopup"

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const-string p1, "Unexpected value: "

    invoke-static {p2, p1, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_3
    const-string p1, "showReadPopupWindow"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    const-string p2, "20121"

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showReadAloudPopupWindow(Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    const-string p2, "showReadArticlesAloudPopupWindow"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    if-eqz p1, :cond_5

    const-string p1, "20029"

    goto :goto_2

    :cond_5
    const-string p1, "20031"

    :goto_2
    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showReadArticlesAloudPopupWindow(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string p2, "showTranslateView"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->runPageTrans()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mTransService:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;->getModeImpl()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Server"

    goto :goto_3

    :cond_7
    const-string v0, "On-device"

    :goto_3
    const-string v1, "Mode"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    const-string p1, "20028"

    goto :goto_4

    :cond_8
    const-string p1, "20002"

    :goto_4
    const-string v0, "201"

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :cond_9
    const-string p2, "showSummarizePopupWindow"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    if-eqz p1, :cond_a

    const-string p1, "20027"

    goto :goto_5

    :cond_a
    const-string p1, "20001"

    :goto_5
    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->showSummarizePopupWindow(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method private measureMaxContentWidth()I
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "si__AIOptionPopup"

    const-string v0, "measureMaxContentWidth, mAdapter == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070095

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070096

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    iput v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v1

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    invoke-virtual {v7, v1, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getViewForMeasure(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private onUpdatePopupView()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "si__AIOptionPopup"

    const-string v0, "onUpdatePopupView, anchorView == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getMoreMenuRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    :cond_2
    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v3, v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    sub-int/2addr v2, v3

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setHorizontalOffset(I)V

    :cond_3
    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setVerticalOffset(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setHeight(I)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->setLandscapeLayout()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->setPhoneBasicLayout()V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isOneUi8Style()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->getWidth()I

    move-result p0

    sub-int/2addr v2, p0

    div-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setHorizontalOffset(I)V

    :cond_7
    return-void
.end method

.method private setLandscapeLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setVerticalOffset(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    const/4 v0, -0x2

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setHeight(I)V

    return-void
.end method

.method private setPhoneBasicLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setVerticalOffset(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07008e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method private showPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAiOptionStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mFeaturePositionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->updateItemViewAlpha(Ljava/lang/Integer;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2

    const-string v0, "si__AIOptionPopup"

    const-string v1, "setAnchorView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->updateAnchorView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 7

    const-string v0, "Show"

    const-string v1, "si__AIOptionPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "show, anchorView == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideVideoAssistant()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->initPopupView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->createItemList()Ljava/util/List;

    move-result-object v3

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mOptionDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mOptionListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->measureMaxContentWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setWidth(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAiOptionPopupOneUi7()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mHeight:I

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->updateContentSize(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->onUpdatePopupView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->showPopup()V

    return-void
.end method

.method public updateAnchorView(Landroid/view/View;)V
    .locals 2

    const-string v0, "si__AIOptionPopup"

    const-string v1, "updateAnchorView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
