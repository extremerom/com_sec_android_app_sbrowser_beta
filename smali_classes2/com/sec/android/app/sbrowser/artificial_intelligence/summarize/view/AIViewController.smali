.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;
    }
.end annotation


# instance fields
.field private mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

.field private final mActivity:Landroid/app/Activity;

.field private mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

.field private mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

.field private mArticleLanguageCode:Ljava/lang/String;

.field private final mArticleObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation
.end field

.field private mArticleText:Ljava/lang/String;

.field private final mBodyContainerTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mBottomControlOffset:I

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private final mContentView:Landroid/view/View;

.field private mInfoDetailButton:Landroid/widget/ImageButton;

.field private mIsBodyContainerTransitionOngoing:Z

.field private mIsMenuContainerShowing:Z

.field private mIsOneUi7StyleErrorViewShowing:Z

.field private mIsProgressOngoing:Z

.field private mIsSummaryTextSelected:Z

.field private final mMainParentView:Landroid/view/ViewGroup;

.field private mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPopupViewLayout:Landroid/widget/LinearLayout;

.field private mProgressAnimation:Landroid/view/ViewGroup;

.field private mProgressStartTime:J

.field private mRequestCode:J

.field private mScrollView:Landroid/widget/ScrollView;

.field private final mScrollViewGestureDetector:Lf1/j;

.field private mSentenceContainer:Landroid/widget/LinearLayout;

.field private final mSentenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

.field private mStyleChangedWithTranslate:Z

.field private mSummarizeBodySentenceView:Landroid/widget/TextView;

.field private mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

.field private mSummarizedText:Ljava/lang/String;

.field private mSummaryCloseIcon:Landroid/widget/ImageButton;

.field private mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

.field private mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

.field private mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

.field private mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

.field private mToolbarOffset:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mStyleChangedWithTranslate:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsBodyContainerTransitionOngoing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mToolbarOffset:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mBottomControlOffset:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsSummaryTextSelected:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mProgressStartTime:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSentenceList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsProgressOngoing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsOneUi7StyleErrorViewShowing:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/c;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mArticleObserver:Landroidx/lifecycle/Y;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mContentView:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mMainParentView:Landroid/view/ViewGroup;

    new-instance p2, Lf1/j;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;I)V

    invoke-direct {p2, p1, v1}, Lf1/j;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollViewGestureDetector:Lf1/j;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mBodyContainerTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->updateSupportLangMap(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->initViewModel()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->initSubModules()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->initViews()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->registerObserver()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->initClickListeners()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->initKeyPressListeners()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->onKeySummaryCloseButton(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$showErrorView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$updateLoadingStates$6()V

    return-void
.end method

.method private checkShowButtonShapeEnabled()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->showButtonShape()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->showButtonShape()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$new$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$updateSummarizeView$7(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$initViews$5(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private formatStringForBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, "\n"

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "\u2022 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->onKeySummarizeBodySentenceView(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method private getView(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mContentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getViews()V
    .locals 3

    const v0, 0x7f0b00bd

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0c0e

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getProgressAnimation()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mProgressAnimation:Landroid/view/ViewGroup;

    const v0, 0x7f0b0c09

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b00c0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSentenceContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    const v0, 0x7f0b00c5

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mBodyContainerTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    const v0, 0x7f0b0612

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mInfoDetailButton:Landroid/widget/ImageButton;

    const v0, 0x7f0b0c0d

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCloseIcon:Landroid/widget/ImageButton;

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$new$3(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$initViews$4(Landroid/view/View;IIII)V

    return-void
.end method

.method private initClickListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->initClickListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->initClickListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->initClickListeners()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupViewLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initKeyPressListeners()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mInfoDetailButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/g;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mInfoDetailButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->getCopyButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->initOnKeyListener(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->initOnKeyListener(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCloseIcon:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/g;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private initSubModules()V
    .locals 10

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mMainParentView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSplitView(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setSplitViewManager(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->initAnimationListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setSubModules(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSubModules(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->setSubModules(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->setSplitViewManager(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V

    return-void
.end method

.method private initViewModel()V
    .locals 2

    new-instance v0, LZ3/x;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mMainParentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/y0;

    invoke-direct {v0, v1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslated(Z)V

    return-void
.end method

.method private initViews()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->initViews()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupViewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;-><init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->initViewsForSplitView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/f;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mInfoDetailButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1400af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCloseIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140869

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getSummaryStyleButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1400b0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getWindowHandlerTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateTitleLayoutTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$initClickListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->lambda$initKeyPressListeners$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    return-object p0
.end method

.method private static synthetic lambda$initClickListeners$0(Landroid/view/View;)V
    .locals 1

    const-string p0, "AIViewController"

    const-string v0, "Content layout click. Do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$initKeyPressListeners$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p0

    or-int/2addr p0, p1

    const/16 p1, 0x15

    const/4 p2, 0x1

    if-eq p0, p1, :cond_3

    const/16 p1, 0x16

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    return v0

    :cond_4
    return p2
.end method

.method private synthetic lambda$initViews$4(Landroid/view/View;IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateScrollViewDividerVisibility()V

    return-void
.end method

.method private synthetic lambda$initViews$5(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateScrollViewDividerVisibility()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->restoreMenuContainer()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private synthetic lambda$new$3(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 10

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;->getResultDto()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;->getResultDto()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getRequestCode()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;->getResultDto()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getRequestCode()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Summarize success - req : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AIViewController"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;->getResultDto()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getRequestCode()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mRequestCode:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestCode mismatch - cur : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mRequestCode:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", rcv : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;->getDto()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->setOriginalTitle(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/d;

    invoke-direct {v5, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/d;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizedText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSentenceList()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mStyleChangedWithTranslate:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mStyleChangedWithTranslate:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->requestTranslate()V

    return-void

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->formatStringForBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getQueries()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSummarizeView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$InappropriateContentFailure;

    if-eqz v0, :cond_5

    const p1, 0x7f14009d

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$RecitationCheckerFailure;

    if-eqz v0, :cond_6

    const p1, 0x7f1400a1

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$UnsupportedLanguageFailure;

    if-eqz v0, :cond_7

    const p1, 0x7f1400a7

    goto :goto_1

    :cond_7
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$AuthTokenExpiredFailure;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConfirmPasswordSamsungAccountActivity(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->dismiss(Z)V

    return-void

    :cond_8
    instance-of p1, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$RestrictedUserFailure;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->showRestrictedUserDialog()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->dismiss(Z)V

    return-void

    :cond_9
    const p1, 0x7f1400a0

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSummarizeBody(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSuggestionView(Ljava/util/List;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateLoadingStates(IZZ)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method private synthetic lambda$showErrorView$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$updateLoadingStates$6()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setWindowHandlerDragEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$updateSummarizeView$7(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSummarizeView(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private onKeySummarizeBodySentenceView(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return p2

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->getCopyButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    return p2

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return v0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTargetLanguageSpinner()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mInfoDetailButton:Landroid/widget/ImageButton;

    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static onKeySummaryCloseButton(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p0

    or-int/2addr p0, p1

    const/16 p1, 0x15

    const/4 p2, 0x1

    if-eq p0, p1, :cond_3

    const/16 p1, 0x16

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    return v0

    :cond_4
    return p2
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsBodyContainerTransitionOngoing:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsSummaryTextSelected:Z

    return-void
.end method

.method private registerObserver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mMainParentView:Landroid/view/ViewGroup;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/k0;->c:Landroidx/lifecycle/k0;

    invoke-static {v0, v1}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/k0;->d:Landroidx/lifecycle/k0;

    invoke-static {v0, v1}, LJc/n;->u(LJc/l;Lsb/k;)LJc/h;

    move-result-object v0

    invoke-static {v0}, LJc/n;->o(LJc/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/J;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setOriginalSummarizedBody(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setOriginalQueries(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getDtoResult()Landroidx/lifecycle/S;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mArticleObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLiveData()Landroidx/lifecycle/S;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTargetLanguageObserver()Landroidx/lifecycle/Y;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->registerObserver(Landroidx/lifecycle/J;)V

    return-void
.end method

.method private restoreTranslationY()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setMinimized(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->restoreTranslationY()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->setMenuContainerVisibilityWithAnimation(Z)V

    return-void
.end method

.method private setMenuContainerVisibilityWithAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsSummaryTextSelected:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->animateMenuContainerAnimation(ILandroid/view/View;)V

    return-void
.end method

.method private shouldEnableInfoDetailAndSummaryStyleButtons(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsOneUi7StyleErrorViewShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private showErrorView(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f0b0c0f

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->setViewHeight(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b00c5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showRestrictedUserDialog()V
    .locals 2

    new-instance v0, Lm/k;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f1400a3

    invoke-virtual {v0, p0}, Lm/k;->e(I)V

    const p0, 0x7f1400a2

    invoke-virtual {v0, p0}, Lm/k;->a(I)V

    const p0, 0x7f1402f5

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->f()Lm/l;

    return-void
.end method

.method private updateInnerLayout(Landroid/content/res/Configuration;Z)V
    .locals 4

    const v0, 0x7f0b00b7

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v3, p1, v1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewLayout(Landroid/content/res/Configuration;Landroid/widget/RelativeLayout$LayoutParams;Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result p2

    if-eqz p2, :cond_0

    const p1, 0x7f080067

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f080069

    goto :goto_0

    :cond_1
    const p1, 0x7f08006a

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->getCopyButton()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->checkShowButtonShapeEnabled()V

    return-void
.end method

.method private updateScrollViewDividerVisibility()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateScrollViewDividerVisibility()V

    return-void
.end method

.method private updateSentenceList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSentenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/StringTokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizedText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSentenceList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSuggestionView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSummarySearchSuggestionList(Ljava/util/List;)V

    return-void
.end method

.method private updateSummarizeView(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mProgressStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, LJ8/d;

    const/16 v6, 0x9

    invoke-direct {v5, p0, v6, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateTranslatedLayout()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setOriginalSummarizedBody(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setOriginalQueries(Ljava/util/List;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSummarizeBody(Ljava/lang/String;Z)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSuggestionView(Ljava/util/List;)V

    invoke-virtual {p0, v0, v0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateLoadingStates(IZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateLanguage()V

    return-void
.end method

.method private updateViewsColor()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSummaryTitleColor()I

    move-result v1

    const v2, 0x7f0b0c1b

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->summarizeBodySentenceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBackgroundColor()I

    move-result v0

    const v1, 0x7f0b0c1c

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setReaderModeContentsBackgroundColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setReaderModeSummaryHeaderIconsColor()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setReaderModeSearchSuggestionViewColor()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewContainer()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->closeSplitViewWithAnimation(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->closeSplitView(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->onDismiss()V

    return-void
.end method

.method public enableButton(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateButton()V

    :cond_1
    return-void
.end method

.method public enableButtonsIfNeeded()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewContainer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButton(Landroid/view/View;Z)V

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->enableMinimizedModeButtons(Z)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->getCopyButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButton(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButton(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableInfoDetailAndSummaryStyleButtons(Z)V

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mInfoDetailButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    return-void
.end method

.method public enableInfoDetailAndSummaryStyleButtons(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->shouldEnableInfoDetailAndSummaryStyleButtons(Z)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mInfoDetailButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButton(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getSummaryStyleButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButton(Landroid/view/View;Z)V

    return-void
.end method

.method public getBottomControlOffset()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mBottomControlOffset:I

    return p0
.end method

.method public getSummarizeBodySentenceView()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeBodySentenceView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getSummarizedTextWithUrl()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizedText:Ljava/lang/String;

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\n\u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummaryViewHeight()I
    .locals 2

    const v0, 0x7f0b0c1c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v0

    const v1, 0x7f0b09ce

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorLanguageContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getToolbarOffset()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mToolbarOffset:I

    return p0
.end method

.method public getViewHeightWithMargins(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method public hideMenuContainerIfNecessary()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public isBodyContainerTransitionOngoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsBodyContainerTransitionOngoing:Z

    return p0
.end method

.method public isFloatingPaneModeBottom()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isFloatingPaneModeBottom()Z

    move-result p0

    return p0
.end method

.method public isOneUi7StyleErrorViewShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsOneUi7StyleErrorViewShowing:Z

    return p0
.end method

.method public isProgressOngoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsProgressOngoing:Z

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onBottomOffsetsChanged(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mBottomControlOffset:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWithBlurLayoutMargin()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateInnerLayout(Landroid/content/res/Configuration;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateInfoDialogParams()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onConfigurationChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButtonsIfNeeded()V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getDtoResult()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mArticleObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->removeObserver()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->dismissTranslateTurnOnDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTargetLanguageObserver()Landroidx/lifecycle/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->onDismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onDismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->onAIViewControllerDismissed()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateBottomBarForSplitOverSheet(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsOneUi7StyleErrorViewShowing:Z

    return-void
.end method

.method public onMainViewToolbarHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWithBlurLayoutMargin()V

    return-void
.end method

.method public onMenuContainerHideShowAnimationEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateNavigationBarColor()V

    return-void
.end method

.method public onSummaryStyleButtonClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onSummaryStyleButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public onSummaryStyleChanged()V
    .locals 5

    const-string v0, "AIViewController"

    const-string v1, "onSummaryStyleChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateLoadingStates(IZZ)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->setRequestCode(J)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslated()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mStyleChangedWithTranslate:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mArticleText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mArticleLanguageCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->requestSummarize(JLjava/lang/String;Ljava/lang/String;)LNc/j0;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->restoreTranslationY()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->restoreSplitOverToDefaultHeight()V

    :cond_0
    return-void
.end method

.method public onToolbarOffsetsChanged(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mToolbarOffset:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWithBlurLayoutMargin()V

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreMenuContainer()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsMenuContainerShowing:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setAnchorViewForSummaryStylePopup(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryStyleManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public setArticleLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mArticleLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public setArticleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mArticleText:Ljava/lang/String;

    return-void
.end method

.method public setFocusToSummaryTitle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setFocusToSummaryTitle()V

    return-void
.end method

.method public setOriginalTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestCode(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mRequestCode:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setViewHeight(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method public shouldShowSplitView()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public showSummaryWindow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateViewsForReaderModeTheme()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->showFadeInAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->registerObserver()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateInnerLayout(Landroid/content/res/Configuration;Z)V

    return-void
.end method

.method public updateBottomBarForSummarySplitOver(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateBottomBarForSplitOverSheet(Z)V

    return-void
.end method

.method public updateLoadingStates(IZZ)V
    .locals 3

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsProgressOngoing:Z

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mProgressStartTime:J

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateLoadingAnimation(IZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMenuContainerPadding()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mPopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->restoreMenuContainer()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateScrollViewDividerVisibility()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButtonsIfNeeded()V

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateTranslatorLayout(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeightIfNecessary()V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mAiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->initValues()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSplitViewContainerInitialY(F)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsBodyContainerTransitionOngoing:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSplitOverUpdatedHeightForDrag(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorLanguageContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->enableButton(Landroid/view/View;Z)V

    return-void
.end method

.method public updateSummarizeBody(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateSummarizeBody(isSummarySuccessful="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00c5

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mIsOneUi7StyleErrorViewShowing:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->showSummaryView(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->showErrorView(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateTranslatorLayout(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mContentLayout:Landroid/widget/LinearLayout;

    const/16 p1, 0x12c

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public updateSummaryText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getOriginalSummarizedBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizedText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSentenceList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizedText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->formatStringForBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSummarizeBody(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getOriginalQueries()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateSuggestionView(Ljava/util/List;)V

    return-void
.end method

.method public updateViewsForReaderModeTheme()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->updateViewsColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSplitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateViewsForReaderModeTheme()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->updateViewsForReaderModeTheme()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateViewsForReaderModeTheme()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateContentAnimationComponentsColor()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->mSummaryPanel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateNavigationBarColor()V

    return-void
.end method
