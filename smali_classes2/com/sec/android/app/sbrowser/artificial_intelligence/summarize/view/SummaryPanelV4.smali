.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;
.super Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 f2\u00020\u00012\u00020\u0002:\u0001fB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0017J\u000f\u0010\u001b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0017J\u000f\u0010\u001c\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J\u000f\u0010\u001d\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0017J\u000f\u0010\u001e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0017J\u000f\u0010\u001f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0017J\u000f\u0010 \u001a\u00020\u000cH\u0017\u00a2\u0006\u0004\u0008 \u0010\u0017J\u001d\u0010$\u001a\u00020\u000c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\'\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u001a\u0010/\u001a\u00020.8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\"\u00104\u001a\u0002038\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010;\u001a\u00020:8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001a\u0010@\u001a\u00020?8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u001a\u0010E\u001a\u00020D8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u001a\u0010J\u001a\u00020I8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u0014\u0010O\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0014\u0010R\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0014\u0010U\u001a\u00020T8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010X\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0014\u0010[\u001a\u00020Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0016\u0010]\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0014\u0010`\u001a\u00020_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0014\u0010c\u001a\u00020b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0014\u0010e\u001a\u00020b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010d\u00a8\u0006g"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/app/Activity;)V",
        "Lcom/sec/android/app/sbrowser/common/view/CornerGradientDrawable;",
        "getContentBackgroundDrawable",
        "()Lcom/sec/android/app/sbrowser/common/view/CornerGradientDrawable;",
        "",
        "isFinished",
        "Ldb/r;",
        "updateTitleAndIconVisibility",
        "(Z)V",
        "",
        "loadingType",
        "updateLoadingAnimation",
        "(IZ)V",
        "Landroid/view/View;",
        "getBackground",
        "()Landroid/view/View;",
        "stopBackgroundTransitionLightEffect",
        "()V",
        "isMinimized",
        "setResultViewMinimizeState",
        "showLightEffectAnimation",
        "updateContentAnimationComponentsColor",
        "showFadeInAnimation",
        "updateNavigationBarColor",
        "setReaderModeContentsBackgroundColor",
        "setReaderModeSummaryHeaderIconsColor",
        "setReaderModeSearchSuggestionViewColor",
        "",
        "",
        "suggestions",
        "updateSummarySearchSuggestionList",
        "(Ljava/util/List;)V",
        "keyword",
        "searchKeyword",
        "(Ljava/lang/String;)V",
        "VIBRATOR_INDEX",
        "I",
        "Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;",
        "summaryPanelBinding",
        "Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;",
        "Landroid/widget/RelativeLayout;",
        "contentView",
        "Landroid/widget/RelativeLayout;",
        "getContentView",
        "()Landroid/widget/RelativeLayout;",
        "Landroid/widget/TextView;",
        "animationTextView",
        "Landroid/widget/TextView;",
        "getAnimationTextView",
        "()Landroid/widget/TextView;",
        "setAnimationTextView",
        "(Landroid/widget/TextView;)V",
        "Landroid/widget/ImageView;",
        "summaryIcon",
        "Landroid/widget/ImageView;",
        "getSummaryIcon",
        "()Landroid/widget/ImageView;",
        "Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;",
        "summaryTitle",
        "Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;",
        "getSummaryTitle",
        "()Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "progressAnimation",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getProgressAnimation",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;",
        "scrollView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;",
        "getScrollView",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;",
        "Ll9/e;",
        "backgroundProcessingLightEffect",
        "Ll9/e;",
        "Ln9/b;",
        "transitionAnimationConfig",
        "Ln9/b;",
        "Ln9/d;",
        "backgroundTransitionLightEffect",
        "Ln9/d;",
        "Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;",
        "summarySearchSuggestionLayoutBinding",
        "Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;",
        "searchSuggestionAdapter",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;",
        "isResultViewMinimized",
        "Z",
        "",
        "gradientBackgroundPositions",
        "[F",
        "",
        "gradientBackgroundColors",
        "[I",
        "gradientBlackBackgroundColors",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final VIBRATOR_INDEX:I

.field private animationTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundProcessingLightEffect:Ll9/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundTransitionLightEffect:Ln9/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentView:Landroid/widget/RelativeLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gradientBackgroundColors:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gradientBackgroundPositions:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gradientBlackBackgroundColors:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isResultViewMinimized:Z

.field private final progressAnimation:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchSuggestionAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final summaryIcon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private summarySearchSuggestionLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final summaryTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transitionAnimationConfig:Ln9/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->VIBRATOR_INDEX:I

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    move-result-object v1

    const-string v2, "inflate(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    const-string v3, "getRoot(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->contentView:Landroid/widget/RelativeLayout;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->contentAnimationText:Landroid/widget/TextView;

    const-string v3, "contentAnimationText"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->animationTextView:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryIcon:Landroid/widget/ImageView;

    const-string v3, "summaryIcon"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryIcon:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const-string v3, "summaryTitle"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->progressAnimationContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "progressAnimationContainer"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->progressAnimation:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->aiSummarizeContentScrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    const-string v3, "aiSummarizeContentScrollView"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->scrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->gradientBackgroundPositions:[F

    const v2, 0x7f060040

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v2, 0x7f060042

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const v2, 0x7f060043

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const v2, 0x7f060044

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v6

    const v2, 0x7f060045

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    const v2, 0x7f060041

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v8

    filled-new-array/range {v3 .. v8}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->gradientBackgroundColors:[I

    const v2, 0x7f060046

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v2, 0x7f060048

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const v2, 0x7f060049

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const v2, 0x7f06004a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v6

    const v2, 0x7f06004b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    const v2, 0x7f060047

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v8

    filled-new-array/range {v3 .. v8}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->gradientBlackBackgroundColors:[I

    sget-object v2, Ll9/b;->t:Ll9/b;

    sget-object v3, Ll9/a;->ADD:Ll9/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "<set-?>"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ll9/b;->c:Ll9/a;

    const/high16 v3, 0x42700000    # 60.0f

    iput v3, v2, Ll9/b;->q:F

    new-instance v3, Ll9/e;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->contentAnimationBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v3, p1, v5, v2}, Ll9/e;-><init>(Landroid/content/Context;Landroid/view/View;Ll9/b;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->backgroundProcessingLightEffect:Ll9/e;

    sget-object v2, Ln9/b;->o:Ln9/b;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->transitionAnimationConfig:Ln9/b;

    sget-object v3, Ln9/a;->VIEW:Ln9/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ln9/b;->i:Ln9/a;

    new-instance v3, Ln9/d;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryContentLayout:Landroid/widget/LinearLayout;

    invoke-direct {v3, p1, v4, v2}, Ln9/d;-><init>(Landroid/content/Context;Landroid/view/View;Ln9/b;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->backgroundTransitionLightEffect:Ln9/d;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryContentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getContentBackgroundDrawable()Lcom/sec/android/app/sbrowser/common/view/CornerGradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summarySearchSuggestionLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->searchSuggestionAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summarySearchSuggestionLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;->searchSuggestionRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summarySearchSuggestionLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;->searchSuggestionRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 p0, 0x4

    invoke-virtual {v2, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->updateLoadingAnimation$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;)V

    return-void
.end method

.method private final getContentBackgroundDrawable()Lcom/sec/android/app/sbrowser/common/view/CornerGradientDrawable;
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/common/view/CornerGradientDrawable;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->gradientBackgroundColors:[I

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->gradientBlackBackgroundColors:[I

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->gradientBackgroundPositions:[F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071421

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/view/CornerGradientDrawable;-><init>([I[FI)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private static final updateLoadingAnimation$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->backgroundProcessingLightEffect:Ll9/e;

    invoke-virtual {p0}, Ll9/e;->a()V

    return-void
.end method


# virtual methods
.method public getAnimationTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->animationTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getBackground()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryBackgroundView:Landroid/view/View;

    const-string v0, "summaryBackgroundView"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getContentView()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->contentView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public bridge synthetic getProgressAnimation()Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->progressAnimation:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public bridge synthetic getScrollView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getScrollView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getScrollView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->scrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    return-object p0
.end method

.method public searchKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyword"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getSplitViewManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->searchKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public setReaderModeContentsBackgroundColor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryContentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getContentBackgroundDrawable()Lcom/sec/android/app/sbrowser/common/view/CornerGradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setReaderModeSearchSuggestionViewColor()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summarySearchSuggestionLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;->summarySearchSuggestionDivider:Landroid/view/View;

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSuggestionDividerColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summarySearchSuggestionLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;->searchSuggestionTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSearchSuggestionTitleTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->searchSuggestionAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setReaderModeSummaryHeaderIconsColor()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeHeaderOptionsIconColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->infoDetailIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryStyleIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSummaryCloseIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->infoDetailIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeHeaderOptionsIconsBg()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryStyleIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeHeaderOptionsIconsBg()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setResultViewMinimizeState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->isResultViewMinimized:Z

    return-void
.end method

.method public showFadeInAnimation()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->contentAnimationBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "contentAnimationBackground"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public showLightEffectAnimation()V
    .locals 14

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryBackgroundView:Landroid/view/View;

    const-string v2, "summaryBackgroundView"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string p0, "getBackground(...)"

    invoke-static {v2, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;

    const/4 p0, 0x1

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;-><init>(I)V

    sget-object v6, Lm9/b;->Mono:Lm9/b;

    sget-object v7, Lk9/p;->LUMINANCE:Lk9/p;

    sget-object v8, Lk9/n;->LUMINANCE_LONG:Lk9/n;

    const/16 v12, 0x200

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-wide/16 v9, 0x190

    const/4 v11, 0x0

    invoke-static/range {v0 .. v13}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->showLightEffectAnimation$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;ILjava/lang/Object;)Lk9/r;

    return-void
.end method

.method public stopBackgroundTransitionLightEffect()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->backgroundTransitionLightEffect:Ln9/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TransitionLightEffect"

    const-string v1, "Stop Transition Effect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ln9/d;->b:Ln9/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li9/a;->g()V

    :cond_0
    return-void
.end method

.method public updateContentAnimationComponentsColor()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "mutate(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeContentLayoutBgColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->contentAnimationBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->contentAnimationText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeProgressAnimationTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateLoadingAnimation(IZ)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->updateTitleAndIconVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summaryContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->summarizePopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "summarizePopupMenuContainer"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->contentLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->isResultViewMinimized:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->backgroundTransitionLightEffect:Ln9/d;

    invoke-virtual {v1}, Ln9/d;->a()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->VIBRATOR_INDEX:I

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffect(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->backgroundProcessingLightEffect:Ll9/e;

    invoke-virtual {v1}, Ll9/e;->b()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV4Binding;->contentLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140ff3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringArray(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lxb/d;->a:Lxb/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lxb/d;->b:Lxb/a;

    invoke-virtual {v1}, Lxb/a;->d()Ljava/util/Random;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v3, v0, v1

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateLoadingAnimation(IZ)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateProgressText(Ljava/lang/String;)V

    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->getSplitViewManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeNavigationBarSummarizeState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_BAR_SUMMARIZE:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_QUICKACCESS:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_MAIN_VIEW_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_MAIN_VIEW:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    return-void
.end method

.method public updateSummarySearchSuggestionList(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "suggestions"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateSummarySearchSuggestionList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SummaryPanelV4"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->summarySearchSuggestionLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateTitleAndIconVisibility(Z)V
    .locals 0

    return-void
.end method
