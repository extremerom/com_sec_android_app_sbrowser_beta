.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 c2\u00020\u0001:\u0001cB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\r\u0010\u0014\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\r\u0010\u0015\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J\r\u0010\u0017\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0012J\r\u0010\u0018\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J%\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u000e\u00a2\u0006\u0004\u0008 \u0010\u0012J\u0013\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u000e\u00a2\u0006\u0004\u0008)\u0010\u0012J\u000f\u0010*\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008*\u0010\u0012J\u000f\u0010+\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008+\u0010,J#\u00101\u001a\u0002002\u0008\u0008\u0001\u0010.\u001a\u00020-2\u0008\u0008\u0001\u0010/\u001a\u00020-H\u0002\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u00083\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u00104\u001a\u0004\u00085\u00106R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u00107\u001a\u0004\u00088\u00109R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010:\u001a\u0004\u0008;\u0010<R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u001a\u0010G\u001a\u00020\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008G\u00107\u001a\u0004\u0008H\u00109R\u0017\u0010I\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u00107\u001a\u0004\u0008J\u00109R\u001a\u0010K\u001a\u00020\u001b8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010NR\u0014\u0010O\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010LR\u0014\u0010P\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u00107R\u0017\u0010R\u001a\u00020Q8\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u001b\u0010Y\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u00109R\u0014\u0010[\u001a\u00020Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u001c\u0010`\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u001a\u0010b\u001a\u0008\u0012\u0004\u0012\u00020%0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010a\u00a8\u0006d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/view/View;",
        "contentView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
        "summarizeViewModel",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "summaryController",
        "<init>",
        "(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V",
        "Landroidx/lifecycle/J;",
        "lifecycleOwner",
        "Ldb/r;",
        "registerObserver",
        "(Landroidx/lifecycle/J;)V",
        "updateButton",
        "()V",
        "dismissTranslateTurnOnDialog",
        "updateLanguage",
        "requestTranslate",
        "initViewsForSplitView",
        "removeObserver",
        "showButtonShape",
        "Landroid/widget/ImageButton;",
        "infoDetailButton",
        "Landroid/widget/TextView;",
        "summarizeBodySentenceView",
        "copyButton",
        "initOnKeyListener",
        "(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/view/View;)V",
        "updateTranslatedLayout",
        "Landroidx/lifecycle/Y;",
        "",
        "getTargetLanguageObserver",
        "()Landroidx/lifecycle/Y;",
        "",
        "isSuccess",
        "updateTranslatorLayout",
        "(Z)V",
        "updateViewsForReaderModeTheme",
        "onTranslatorBtnClick",
        "getSourceTargetForLogging",
        "()Ljava/lang/String;",
        "",
        "resId",
        "color",
        "Landroid/graphics/drawable/Drawable;",
        "getDrawableWithReaderModeColor",
        "(II)Landroid/graphics/drawable/Drawable;",
        "updateSourceLanguageDescription",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Landroid/view/View;",
        "getContentView",
        "()Landroid/view/View;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
        "getSummarizeViewModel",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "splitViewManager",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "getSplitViewManager",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "setSplitViewManager",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;)V",
        "unSupportLanguageForTranslate",
        "Z",
        "translatorButton",
        "getTranslatorButton",
        "translatorLanguageContainer",
        "getTranslatorLanguageContainer",
        "translatorTextView",
        "Landroid/widget/TextView;",
        "getTranslatorTextView",
        "()Landroid/widget/TextView;",
        "sourceText",
        "summaryFromLanguageContainer",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;",
        "targetLanguageSpinner",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;",
        "getTargetLanguageSpinner",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;",
        "translatorLanguageDivider$delegate",
        "Ldb/f;",
        "getTranslatorLanguageDivider",
        "translatorLanguageDivider",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;",
        "targetLanguageSpinnerController",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;",
        "Lm/l;",
        "translateTurnOnDialog",
        "Lm/l;",
        "sourceLanguageObserver",
        "Landroidx/lifecycle/Y;",
        "isTargetChangedObserver",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isTargetChangedObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sourceLanguageObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sourceText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

.field private final summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final summaryController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final summaryFromLanguageContainer:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final targetLanguageSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final targetLanguageSpinnerController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private translateTurnOnDialog:Lm/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final translatorButton:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final translatorLanguageContainer:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final translatorLanguageDivider$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final translatorTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private unSupportLanguageForTranslate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summarizeViewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summaryController"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->contentView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summaryController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->unSupportLanguageForTranslate:Z

    const p1, 0x7f0b00ba

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p4, "findViewById(...)"

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorButton:Landroid/view/View;

    const p1, 0x7f0b0c20

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageContainer:Landroid/view/View;

    const p1, 0x7f0b00bb

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorTextView:Landroid/widget/TextView;

    const p1, 0x7f0b0c12

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceText:Landroid/widget/TextView;

    const p1, 0x7f0b0c11

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summaryFromLanguageContainer:Landroid/view/View;

    const p1, 0x7f0b0c1f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/x;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/x;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageDivider$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    invoke-direct {p1, p3, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinnerController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceLanguageObserver:Landroidx/lifecycle/Y;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->isTargetChangedObserver:Landroidx/lifecycle/Y;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/b;

    const/4 p4, 0x3

    invoke-direct {p3, p4, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1400b5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final _init_$lambda$4(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->onTranslatorBtnClick()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->onTranslatorBtnClick$lambda$6(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V

    return-void
.end method

.method public static final synthetic access$getSourceTargetForLogging(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getSourceTargetForLogging()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setUnSupportLanguageForTranslate$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->unSupportLanguageForTranslate:Z

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateTranslatorLayout$lambda$12(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->isTargetChangedObserver$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->_init_$lambda$4(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageDivider_delegate$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->onTranslatorBtnClick$lambda$8$lambda$7(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->requestTranslate$lambda$9(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private final getDrawableWithReaderModeColor(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "mutate(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p0
.end method

.method private final getSourceTargetForLogging()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-static {v0, v1, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getTranslatorLanguageDivider()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageDivider$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceLanguageObserver$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->initOnKeyListener$lambda$10(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static final initOnKeyListener$lambda$10(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-static {p4}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p2

    or-int/2addr p2, p3

    const/4 p3, 0x1

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    return p3

    :pswitch_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    return p3

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final initOnKeyListener$lambda$11(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-static {p4}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p2

    or-int/2addr p2, p3

    const/4 p3, 0x1

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    :cond_1
    return p3

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    :cond_2
    :pswitch_2
    return p3

    :pswitch_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    return p3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final isTargetChangedObserver$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->requestTranslate()V

    :cond_0
    return-void
.end method

.method public static synthetic j(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->initOnKeyListener$lambda$11(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private final onTranslatorBtnClick()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportMainSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getTranslateTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/A;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/A;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translateTurnOnDialog:Lm/l;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->unSupportLanguageForTranslate:Z

    const-string v1, "20011"

    const-string v2, "1000"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->contentView:Landroid/view/View;

    const v4, 0x7f1402c4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$onTranslatorBtnClick$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$onTranslatorBtnClick$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslated()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "20012"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslated(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summaryController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getOriginalTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setOriginalTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summaryController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->updateSummaryText()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->isValidSourceLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getDefaultTargetLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslateTargetLanguage(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->requestTranslate()V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$onTranslatorBtnClick$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$onTranslatorBtnClick$4;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private static final onTranslatorBtnClick$lambda$6(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->onTranslatorBtnClick()V

    :cond_0
    return-void
.end method

.method private static final onTranslatorBtnClick$lambda$8$lambda$7(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translateTurnOnDialog:Lm/l;

    return-void
.end method

.method private static final requestTranslate$lambda$9(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslated(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->requestTranslate()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->resetTargetChanged()V

    return-void
.end method

.method private static final sourceLanguageObserver$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Source Language"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_0
    const-string v1, "update source language : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SummaryTranslator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->isValidSourceLanguage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "re-translate due to source language deletion"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->requestTranslate()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceText:Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateSourceLanguageDescription()V

    :cond_2
    return-void
.end method

.method private static final translatorLanguageDivider_delegate$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->contentView:Landroid/view/View;

    const v0, 0x7f0b0c21

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final updateSourceLanguageDescription()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summaryFromLanguageContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140fcc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final updateTranslatorLayout$lambda$12(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getSplitViewManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->updateMenuContainerPadding()V

    return-void
.end method


# virtual methods
.method public final dismissTranslateTurnOnDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translateTurnOnDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translateTurnOnDialog:Lm/l;

    :cond_1
    :goto_0
    return-void
.end method

.method public final getSplitViewManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSummarizeViewModel()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    return-object p0
.end method

.method public final getTargetLanguageObserver()Landroidx/lifecycle/Y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/Y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinnerController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->getTargetLanguageObserver()Landroidx/lifecycle/Y;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetLanguageSpinner()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    return-object p0
.end method

.method public getTranslatorButton()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorButton:Landroid/view/View;

    return-object p0
.end method

.method public final getTranslatorLanguageContainer()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageContainer:Landroid/view/View;

    return-object p0
.end method

.method public getTranslatorTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final initOnKeyListener(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "infoDetailButton"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summarizeBodySentenceView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyButton"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;

    invoke-direct {p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public initViewsForSplitView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method public final registerObserver(Landroidx/lifecycle/J;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceLanguageObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->isTargetChanged()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->isTargetChangedObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public final removeObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceLanguageObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->isTargetChanged()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->isTargetChangedObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public final requestTranslate()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summaryController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->updateLoadingStates(IZZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->refresh(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)V

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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    return-void
.end method

.method public final showButtonShape()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060c29

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final updateButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->unSupportLanguageForTranslate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final updateLanguage()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$updateLanguage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator$updateLanguage$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getSupportAllLanguageList(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageList;)V

    return-void
.end method

.method public final updateTranslatedLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceText:Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinnerController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->setSelection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->updateSourceLanguageDescription()V

    return-void
.end method

.method public final updateTranslatorLayout(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->summarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslated()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorTextView()Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f1400b5

    const v2, 0x7f140f64

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorLanguageDivider()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->translatorLanguageContainer:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final updateViewsForReaderModeTheme()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBackgroundColor()I

    move-result v2

    const v3, 0x7f0803aa

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getDrawableWithReaderModeColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBottomButtonsTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->sourceText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->targetLanguageSpinnerController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->updateSpinnerLanguageTextViewColor()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->getTranslatorLanguageDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSuggestionDividerColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
