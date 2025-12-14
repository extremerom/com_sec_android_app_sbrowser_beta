.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;
.super Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 G2\u00020\u0001:\u0001GB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\u000f\u0010\u0018\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0013R\u0014\u0010\u0019\u001a\u00020\u000b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001f\u001a\u00020\u001e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\"\u0010$\u001a\u00020#8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010+\u001a\u00020*8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u001a\u00100\u001a\u00020/8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u001a\u00105\u001a\u0002048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u001a\u0010:\u001a\u0002098\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u0014\u0010?\u001a\u00020>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0014\u0010E\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010F\u00a8\u0006H"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/app/Activity;)V",
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
        "showLightEffectAnimation",
        "()V",
        "updateContentAnimationComponentsColor",
        "showFadeInAnimation",
        "updateNavigationBarColor",
        "setReaderModeContentsBackgroundColor",
        "setReaderModeSummaryHeaderIconsColor",
        "VIBRATOR_INDEX",
        "I",
        "Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;",
        "summaryPanelBinding",
        "Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3$Companion;
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

.field private final progressAnimation:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final summaryIcon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;
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

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->VIBRATOR_INDEX:I

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->contentView:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->contentAnimationText:Landroid/widget/TextView;

    const-string v2, "contentAnimationText"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->animationTextView:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryIcon:Landroid/widget/ImageView;

    const-string v2, "summaryIcon"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryIcon:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const-string v2, "summaryTitle"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->progressAnimationContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "progressAnimationContainer"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->progressAnimation:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->aiSummarizeContentScrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    const-string v2, "aiSummarizeContentScrollView"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->scrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    sget-object v1, Ll9/b;->t:Ll9/b;

    sget-object v2, Ll9/a;->ADD:Ll9/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ll9/b;->c:Ll9/a;

    const/high16 v2, 0x42340000    # 45.0f

    iput v2, v1, Ll9/b;->n:F

    const/high16 v4, 0x42700000    # 60.0f

    iput v4, v1, Ll9/b;->q:F

    new-instance v4, Ll9/e;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->contentAnimationBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v4, p1, v5, v1}, Ll9/e;-><init>(Landroid/content/Context;Landroid/view/View;Ll9/b;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->backgroundProcessingLightEffect:Ll9/e;

    sget-object v1, Ln9/b;->o:Ln9/b;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->transitionAnimationConfig:Ln9/b;

    sget-object v4, Ln9/a;->VIEW:Ln9/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v1, Ln9/b;->i:Ln9/a;

    iput v2, v1, Ln9/b;->k:F

    new-instance v2, Ln9/d;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryContentLayout:Landroid/widget/LinearLayout;

    invoke-direct {v2, p1, v0, v1}, Ln9/d;-><init>(Landroid/content/Context;Landroid/view/View;Ln9/b;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->backgroundTransitionLightEffect:Ln9/d;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->updateLoadingAnimation$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;)V

    return-void
.end method

.method private static final updateLoadingAnimation$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->backgroundProcessingLightEffect:Ll9/e;

    invoke-virtual {p0}, Ll9/e;->a()V

    return-void
.end method


# virtual methods
.method public getAnimationTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->animationTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getBackground()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryBackgroundView:Landroid/view/View;

    const-string v0, "summaryBackgroundView"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getContentView()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->contentView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public bridge synthetic getProgressAnimation()Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->progressAnimation:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public bridge synthetic getScrollView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getScrollView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getScrollView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->scrollView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarizeContentScrollView;

    return-object p0
.end method

.method public setReaderModeContentsBackgroundColor()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeContentLayoutBgColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "mutate(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setReaderModeSummaryHeaderIconsColor()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeHeaderOptionsIconColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->infoDetailIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryStyleIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSummaryCloseIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->infoDetailIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeHeaderOptionsIconsBg()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryStyleIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeHeaderOptionsIconsBg()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public showFadeInAnimation()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->contentAnimationBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    .locals 15

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isOneUi7Style()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryBackgroundView:Landroid/view/View;

    const-string v0, "summaryBackgroundView"

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string p0, "getBackground(...)"

    invoke-static {v3, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;

    const/4 p0, 0x1

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;-><init>(I)V

    sget-object v7, Lm9/b;->Mono:Lm9/b;

    sget-object v8, Lk9/p;->LUMINANCE:Lk9/p;

    sget-object v9, Lk9/n;->LUMINANCE_LONG:Lk9/n;

    const/16 v13, 0x200

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-wide/16 v10, 0x190

    const/4 v12, 0x0

    invoke-static/range {v1 .. v14}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->showLightEffectAnimation$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;ILjava/lang/Object;)Lk9/r;

    return-void
.end method

.method public updateContentAnimationComponentsColor()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getContentView()Landroid/widget/RelativeLayout;

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getContentView()Landroid/widget/RelativeLayout;

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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->contentAnimationBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->contentAnimationText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeProgressAnimationTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateLoadingAnimation(IZ)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->updateTitleAndIconVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summaryContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->summarizePopupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "summarizePopupMenuContainer"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isOneUi7Style()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_4

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->contentLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->backgroundTransitionLightEffect:Ln9/d;

    invoke-virtual {v1}, Ln9/d;->a()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->VIBRATOR_INDEX:I

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffect(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->backgroundProcessingLightEffect:Ll9/e;

    invoke-virtual {v1}, Ll9/e;->b()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getProgressAnimation()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->summaryPanelBinding:Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SummaryPanelV3Binding;->contentLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140ff3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
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

    aget-object v4, v0, v1

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateLoadingAnimation(IZ)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateProgressText(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    return-void
.end method

.method public updateTitleAndIconVisibility(Z)V
    .locals 0

    return-void
.end method
