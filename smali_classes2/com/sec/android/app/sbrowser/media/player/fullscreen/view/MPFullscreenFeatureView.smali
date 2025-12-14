.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;
.source "SourceFile"


# instance fields
.field private mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mClickListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;

.field private mExtractTextLayout:Landroid/view/View;

.field private mFeatureInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

.field private mFeatureLayout:Landroid/view/View;

.field private final mHideAnimation:Landroid/view/animation/Animation;

.field private mLockButton:Landroid/view/View;

.field private final mShowAnimation:Landroid/view/animation/Animation;

.field private mStretchButton:Landroid/view/View;

.field private final mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mToastView:Landroid/widget/TextView;

.field private mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;-><init>(Landroid/os/Handler;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->maxFeatureItem()I

    move-result p1

    new-array p1, p1, [Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mClickListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/c;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/c;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f01003b

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f01003a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mHideAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->lambda$new$0(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;)[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    return-object p0
.end method

.method private finalizeChildView()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->maxFeatureItem()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->release()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initializeChildView()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->finalizeChildView()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfoUtil;->generate()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->layoutId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->id()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v4, v2, v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->createFeatureItem(ILandroid/view/View;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mClickListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->setOnClickListener(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->layoutIndex()I

    move-result v1

    aput-object v2, v3, v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->initializeChildView()V

    return-void
.end method

.method private isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updatePopupButton()V

    return-void
.end method

.method private registerAccessibilityChangedListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method private unregisterAccessibilityChangedListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method private updateChildView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->layoutIndex()I

    move-result v1

    aget-object v1, v2, v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->update()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateHoverPopupEnabled(Z)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->setHoverPopupEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getToastView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mToastView:Landroid/widget/TextView;

    return-object p0
.end method

.method public hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mHideAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->hide(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateHoverPopupEnabled(Z)V

    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createFeatureTopView(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    const v0, 0x7f0b0711

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    const v0, 0x7f0b073f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mToastView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0718

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mLockButton:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b071c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mStretchButton:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0717

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mExtractTextLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->initializeChildView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->registerAccessibilityChangedListener()V

    return-void
.end method

.method public isMoreMenuVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->isMoreMenuVisible()Z

    move-result p0

    return p0
.end method

.method public removeListener()V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->setOnClickListener(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetPadding()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setBottomLayoutPadding(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07099f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    add-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateRotationButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateChildView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updatePlaybackSpeedControl()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isGestureOnlyEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mShowAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->show(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateHoverPopupEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public toggleMoreMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->toggleMoreMenu()V

    return-void
.end method

.method public uninitialized()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->finalizeChildView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->uninitialized()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mToastView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureInfoList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->unregisterAccessibilityChangedListener()V

    return-void
.end method

.method public updateBottomLayoutMargins(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    int-to-double v2, p1

    const-wide v4, 0x3fbf3b645a1cac08L    # 0.122

    :goto_0
    mul-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-double v2, p1

    const-wide v4, 0x3fc1eb851eb851ecL    # 0.14

    goto :goto_0

    :cond_1
    int-to-double v2, p1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070963

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mLockButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mLockButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mExtractTextLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mStretchButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mStretchButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mExtractTextLayout:Landroid/view/View;

    int-to-double v0, p1

    const-wide v2, 0x3fb3b645a1cac083L    # 0.077

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-virtual {p0, v4, v4, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public updateFeatureButtons()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateChildView()V

    return-void
.end method

.method public updateFeatureTopViewBg(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mTopLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->updateFeatureTopViewBg(Z)V

    return-void
.end method

.method public updateFeatureUpperViews()V
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->update()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateLiveTextButton()V
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->update()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updatePlaybackSpeedControl()V
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->update()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updatePopupButton()V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->update()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateRotationButton()V
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->update()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateVolumeButton()V
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->mFeatureItemList:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->update()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
