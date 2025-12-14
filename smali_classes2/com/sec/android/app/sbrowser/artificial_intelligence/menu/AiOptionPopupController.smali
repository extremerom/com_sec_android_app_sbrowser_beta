.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAnchor:Landroid/view/View;

.field private final mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

.field private final mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionPopupListener;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->lambda$showPopup$0()V

    return-void
.end method

.method private getAnchorview()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mAnchor:Landroid/view/View;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isBottomBarEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v3

    const v4, 0x7f0b0050

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getMoreMenuButton(Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getMoreMenuButton(Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getAiButton(Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getAiButton(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showPopup$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->show(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->dismiss()V

    return-void
.end method

.method public isPopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->isShowing()Z

    move-result p0

    return p0
.end method

.method public notifyAiOptionStatusChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mPopup:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->notifyAiOptionStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const-string v0, "AiOptionPopupController"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public showPopup()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->getAnchorview()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->mAnchor:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, LG6/e;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
