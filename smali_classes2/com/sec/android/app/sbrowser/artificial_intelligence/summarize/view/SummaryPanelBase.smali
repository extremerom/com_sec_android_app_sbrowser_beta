.class public abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\'\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000cJ\u001f\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ\u0017\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010#\u001a\u00020\u00082\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u0008\u00a2\u0006\u0004\u0008%\u0010\u000cJ\u0015\u0010&\u001a\u00020\u00082\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\u0008\u00a2\u0006\u0004\u0008(\u0010\u000cJ\r\u0010)\u001a\u00020\u0008\u00a2\u0006\u0004\u0008)\u0010\u000cJ\u000f\u0010*\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008*\u0010\u000cJ\u0015\u0010,\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0018\u00a2\u0006\u0004\u0008,\u0010\u001bJ\u000f\u0010-\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008-\u0010\u000cR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010.\u001a\u0004\u0008/\u00100R\"\u00102\u001a\u0002018\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u00109\u001a\u0002088\u0016@\u0016X\u0096.\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\"\u0010?\u001a\u00020\u00188\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010\u001bR\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010H\u001a\u00020G8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\"\u0010K\u001a\u00020J8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0016\u0010R\u001a\u00020Q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010T\u001a\u00020Q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008T\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0014\u0010Y\u001a\u0002088&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010<R\u0014\u0010\\\u001a\u00020 8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010[R\u0014\u0010^\u001a\u00020J8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010NR\u0014\u0010`\u001a\u00020 8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010[\u00a8\u0006a"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;",
        "",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/app/Activity;)V",
        "Landroid/view/View$OnTouchListener;",
        "windowHandlerTouchListener",
        "Ldb/r;",
        "updateTitleLayoutTouchListener",
        "(Landroid/view/View$OnTouchListener;)V",
        "updateScrollViewDividerVisibility",
        "()V",
        "updateContentAnimationComponentsColor",
        "setReaderModeContentsBackgroundColor",
        "setReaderModeSummaryHeaderIconsColor",
        "setReaderModeSearchSuggestionViewColor",
        "",
        "loadingType",
        "",
        "isFinished",
        "updateLoadingAnimation",
        "(IZ)V",
        "initViews",
        "",
        "sentence",
        "showSummaryView",
        "(Ljava/lang/String;)V",
        "bodyText",
        "Landroid/text/SpannableString;",
        "getBodySpan",
        "(Ljava/lang/String;)Landroid/text/SpannableString;",
        "Landroid/view/View;",
        "view",
        "height",
        "setViewHeight",
        "(Landroid/view/View;I)V",
        "initClickListeners",
        "onInfoDetailClick",
        "(Landroid/view/View;)V",
        "updateInfoDialogParams",
        "onDismiss",
        "showFadeInAnimation",
        "progressText",
        "updateProgressText",
        "updateNavigationBarColor",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "splitViewManager",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "getSplitViewManager",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "setSplitViewManager",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V",
        "Landroid/view/ViewGroup;",
        "contentLayout",
        "Landroid/view/ViewGroup;",
        "getContentLayout",
        "()Landroid/view/ViewGroup;",
        "setContentLayout",
        "(Landroid/view/ViewGroup;)V",
        "title",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;",
        "sentenceContainerBinding",
        "Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;",
        "Landroid/widget/LinearLayout;",
        "sentenceContainer",
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/TextView;",
        "summarizeBodySentenceView",
        "Landroid/widget/TextView;",
        "getSummarizeBodySentenceView",
        "()Landroid/widget/TextView;",
        "setSummarizeBodySentenceView",
        "(Landroid/widget/TextView;)V",
        "Landroid/widget/ImageButton;",
        "infoDetailButton",
        "Landroid/widget/ImageButton;",
        "summaryCloseIcon",
        "Lm/l;",
        "infoDialog",
        "Lm/l;",
        "getProgressAnimation",
        "progressAnimation",
        "getContentView",
        "()Landroid/view/View;",
        "contentView",
        "getAnimationTextView",
        "animationTextView",
        "getScrollView",
        "scrollView",
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


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public contentLayout:Landroid/view/ViewGroup;

.field private infoDetailButton:Landroid/widget/ImageButton;

.field private infoDialog:Lm/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sentenceContainer:Landroid/widget/LinearLayout;

.field private sentenceContainerBinding:Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;

.field public splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

.field protected summarizeBodySentenceView:Landroid/widget/TextView;

.field private summaryCloseIcon:Landroid/widget/ImageButton;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->initClickListeners$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;Landroid/view/View;)V

    return-void
.end method

.method private static final initClickListeners$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getSplitViewManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->onCloseButtonClick()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public abstract getAnimationTextView()Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getBodySpan(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bodyText"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->sentenceContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "sentenceContainer"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f071479

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v4, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getSummarizeBodySentenceView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f1502eb

    invoke-direct {p1, v3, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p1, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->sentenceContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0700bf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, v1, p1, p0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public getContentLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->contentLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "contentLayout"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract getContentView()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getProgressAnimation()Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getScrollView()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getSplitViewManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSummarizeBodySentenceView()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->summarizeBodySentenceView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "summarizeBodySentenceView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->title:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "title"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final initClickListeners()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDetailButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/t;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/t;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->summaryCloseIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/t;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/t;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "summaryCloseIcon"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "infoDetailButton"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public initViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0c0e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setContentLayout(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0612

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDetailButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0c0d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->summaryCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->sentenceContainerBinding:Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;

    const/4 v1, 0x0

    const-string v2, "sentenceContainerBinding"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->sentenceContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->sentenceContainerBinding:Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;->aiSummarizePopupBodySentence:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->setSummarizeBodySentenceView(Landroid/widget/TextView;)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onInfoDetailClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDetailButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;->getInfoDialog(Landroid/content/Context;Landroid/widget/ImageButton;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDialog:Lm/l;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDialog:Lm/l;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    const-string p0, "1000"

    const-string p1, "20013"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "infoDetailButton"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public setContentLayout(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->contentLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setReaderModeContentsBackgroundColor()V
    .locals 0

    return-void
.end method

.method public setReaderModeSearchSuggestionViewColor()V
    .locals 0

    return-void
.end method

.method public setReaderModeSummaryHeaderIconsColor()V
    .locals 0

    return-void
.end method

.method public final setSplitViewManager(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    return-void
.end method

.method public final setSummarizeBodySentenceView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->summarizeBodySentenceView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewHeight(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "view"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showFadeInAnimation()V
    .locals 0

    return-void
.end method

.method public showSummaryView(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sentence"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getBodySpan(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getSummarizeBodySentenceView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getContentView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->sentenceContainerBinding:Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizePopupSentenceContainerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "sentenceContainerBinding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public updateContentAnimationComponentsColor()V
    .locals 0

    return-void
.end method

.method public final updateInfoDialogParams()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDialog:Lm/l;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->infoDialog:Lm/l;

    if-eqz v0, :cond_3

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletOrDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0700a8

    goto :goto_0

    :cond_2
    const p0, 0x7f0700a7

    :goto_0
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateLoadingAnimation(IZ)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getScrollView()Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 0

    return-void
.end method

.method public final updateProgressText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "progressText"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getAnimationTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getAnimationTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateScrollViewDividerVisibility()V
    .locals 0

    return-void
.end method

.method public updateTitleLayoutTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnTouchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "windowHandlerTouchListener"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
