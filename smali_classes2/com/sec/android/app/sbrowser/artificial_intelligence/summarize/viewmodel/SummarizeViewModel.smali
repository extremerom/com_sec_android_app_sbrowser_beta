.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 l2\u00020\u0001:\u0001lB\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0015\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u0018J\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008 \u0010\u0018J\u000f\u0010!\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008!\u0010\u001eJ\r\u0010\"\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\"\u0010\u001eJ\u0017\u0010$\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008$\u0010\u0018J\r\u0010%\u001a\u00020\u0008\u00a2\u0006\u0004\u0008%\u0010\u001eJ\u001b\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00080\'2\u0006\u0010&\u001a\u00020\u0008\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008*\u0010\u0018J\r\u0010+\u001a\u00020\u000e\u00a2\u0006\u0004\u0008+\u0010\u0010J\u0015\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u0008\u00a2\u0006\u0004\u0008-\u0010.J\u0015\u00100\u001a\u00020/2\u0006\u0010,\u001a\u00020\u0008\u00a2\u0006\u0004\u00080\u00101J\u001d\u00103\u001a\u00020/2\u0006\u0010,\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0008\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u000e\u00a2\u0006\u0004\u00085\u0010\u0010J\'\u00106\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00086\u00107R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00108R \u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080:098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R \u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120:098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010<R\"\u0010>\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR(\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00080\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u0018\u0010J\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0018\u0010L\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010KR\u0018\u0010M\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\'\u0010T\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\'0O8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010SR\u001c\u0010U\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0008098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010<R\u001c\u0010V\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0008098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010<R\u001a\u0010W\u001a\u0008\u0012\u0004\u0012\u00020/098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010<R\u001b\u0010\\\u001a\u00020X8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Q\u001a\u0004\u0008Z\u0010[R \u0010]\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120:098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010<R \u0010a\u001a\u000e\u0012\u0004\u0012\u00020_\u0012\u0004\u0012\u00020`0^8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u001d\u0010d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120:0O8F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010SR\u0019\u0010f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080O8F\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010SR\u0019\u0010h\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080O8F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010SR\u0017\u0010i\u001a\u0008\u0012\u0004\u0012\u00020/0O8F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010SR\u001d\u0010k\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120:0O8F\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010S\u00a8\u0006m"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
        "Landroidx/lifecycle/s0;",
        "LNc/x;",
        "coroutineDispatcher",
        "<init>",
        "(LNc/x;)V",
        "",
        "requestCode",
        "",
        "text",
        "languageCode",
        "LNc/j0;",
        "requestSummarize",
        "(JLjava/lang/String;Ljava/lang/String;)LNc/j0;",
        "Ldb/r;",
        "clearSummaryCache",
        "()V",
        "requestTranslate",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;",
        "result",
        "setAiResult",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V",
        "errMessage",
        "setFailedResult",
        "(Ljava/lang/String;)V",
        "setAuthExpiredResult",
        "title",
        "setDocumentTitle",
        "setOriginalTitle",
        "getOriginalTitle",
        "()Ljava/lang/String;",
        "body",
        "setOriginalSummarizedBody",
        "getOriginalSummarizedBody",
        "getTranslateSourceLanguage",
        "language",
        "setTranslateSourceLanguage",
        "getTranslateTargetLanguage",
        "source",
        "",
        "getTranslateTargetLanguageList",
        "(Ljava/lang/String;)Ljava/util/List;",
        "setTranslateTargetLanguage",
        "resetTargetChanged",
        "sourceLanguage",
        "getDefaultTargetLanguage",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "isValidSourceLanguage",
        "(Ljava/lang/String;)Z",
        "targetLanguage",
        "isValidTargetLanguage",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        "releaseSummarizer",
        "requestSummarizeInternal",
        "(JLjava/lang/String;Ljava/lang/String;)V",
        "LNc/x;",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "_documentTitle",
        "Landroidx/lifecycle/X;",
        "_requestTranslate",
        "translated",
        "Z",
        "getTranslated",
        "()Z",
        "setTranslated",
        "(Z)V",
        "originalQueries",
        "Ljava/util/List;",
        "getOriginalQueries",
        "()Ljava/util/List;",
        "setOriginalQueries",
        "(Ljava/util/List;)V",
        "originalTitle",
        "Ljava/lang/String;",
        "originalSummarizedBody",
        "summarizedResult",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;",
        "Landroidx/lifecycle/S;",
        "sourceLanguageList$delegate",
        "Ldb/f;",
        "getSourceLanguageList",
        "()Landroidx/lifecycle/S;",
        "sourceLanguageList",
        "_translateSourceLiveData",
        "_translateTargetLiveData",
        "_isTargetChanged",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;",
        "scsSummarizerClient$delegate",
        "getScsSummarizerClient",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;",
        "scsSummarizerClient",
        "_dtoResult",
        "",
        "",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;",
        "summaryCache",
        "Ljava/util/Map;",
        "getDtoResultBeforeTranslate",
        "dtoResultBeforeTranslate",
        "getTranslateSourceLiveData",
        "translateSourceLiveData",
        "getTranslateTargetLiveData",
        "translateTargetLiveData",
        "isTargetChanged",
        "getDtoResult",
        "dtoResult",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _documentTitle:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _dtoResult:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _isTargetChanged:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _requestTranslate:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _translateSourceLiveData:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _translateTargetLiveData:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coroutineDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private originalQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private originalSummarizedBody:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private originalTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scsSummarizerClient$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sourceLanguageList$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private summarizedResult:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final summaryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private translated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;-><init>(LNc/x;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(LNc/x;)V
    .locals 1
    .param p1    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coroutineDispatcher"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->coroutineDispatcher:LNc/x;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_documentTitle:Landroidx/lifecycle/X;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_requestTranslate:Landroidx/lifecycle/X;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->originalQueries:Ljava/util/List;

    new-instance p1, LB9/b;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, LB9/b;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->sourceLanguageList$delegate:Ldb/f;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_translateSourceLiveData:Landroidx/lifecycle/X;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_translateTargetLiveData:Landroidx/lifecycle/X;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_isTargetChanged:Landroidx/lifecycle/X;

    new-instance p1, LB9/b;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LB9/b;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->scsSummarizerClient$delegate:Ldb/f;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_dtoResult:Landroidx/lifecycle/X;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->summaryCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;-><init>(LNc/x;)V

    return-void
.end method

.method public static final synthetic access$getSummarizedResult$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->summarizedResult:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;

    return-object p0
.end method

.method public static final synthetic access$getSummaryCache$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->summaryCache:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$get_dtoResult$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_dtoResult:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static final synthetic access$requestSummarizeInternal(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->requestSummarizeInternal(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setSummarizedResult$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->summarizedResult:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->scsSummarizerClient_delegate$lambda$1()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/S;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->sourceLanguageList_delegate$lambda$0()Landroidx/lifecycle/S;

    move-result-object v0

    return-object v0
.end method

.method private final requestSummarizeInternal(JLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistSummaryStyle()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "long_note"

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid SummaryStyle: "

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "short_note"

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getScsSummarizerClient()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$requestSummarizeInternal$1;

    move-object v8, v6

    move-object v9, p0

    move-wide v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$requestSummarizeInternal$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;JLjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarize$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;JLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final scsSummarizerClient_delegate$lambda$1()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;-><init>()V

    return-object v0
.end method

.method private static final sourceLanguageList_delegate$lambda$0()Landroidx/lifecycle/S;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getSourceLanguageList()Landroidx/lifecycle/S;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearSummaryCache()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->summaryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getDefaultTargetLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sourceLanguage"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSummarizePopupUserLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getLocaleDefaultLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    move-object p1, v0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, v1

    goto :goto_2

    :cond_1
    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, "es"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-object p1
.end method

.method public final getDtoResult()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_dtoResult:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final getDtoResultBeforeTranslate()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_requestTranslate:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final getOriginalQueries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->originalQueries:Ljava/util/List;

    return-object p0
.end method

.method public final getOriginalSummarizedBody()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->originalSummarizedBody:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriginalTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->originalTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getScsSummarizerClient()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->scsSummarizerClient$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    return-object p0
.end method

.method public final getSourceLanguageList()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->sourceLanguageList$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getTranslateSourceLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLiveData()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Source Language"

    return-object p0
.end method

.method public final getTranslateSourceLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_translateSourceLiveData:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final getTranslateTargetLanguage()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getDefaultTargetLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTranslateTargetLanguageList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "source"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Source Language"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getTranslateTargetLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_translateTargetLiveData:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final getTranslated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->translated:Z

    return p0
.end method

.method public final isTargetChanged()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_isTargetChanged:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final isValidSourceLanguage(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "sourceLanguage"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Source Language"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "en"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isValidTargetLanguage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sourceLanguage"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLanguage"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "en"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->isValidSourceLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final releaseSummarizer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getScsSummarizerClient()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->release()V

    :cond_0
    return-void
.end method

.method public final requestSummarize(JLjava/lang/String;Ljava/lang/String;)LNc/j0;
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageCode"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->coroutineDispatcher:LNc/x;

    new-instance v9, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$requestSummarize$1;

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-wide v5, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel$requestSummarize$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Ljava/lang/String;JLjava/lang/String;Lib/c;)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, v9, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method

.method public final requestTranslate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_requestTranslate:Landroidx/lifecycle/X;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->summarizedResult:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final resetTargetChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_isTargetChanged:Landroidx/lifecycle/X;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_dtoResult:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAuthExpiredResult(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errMessage"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$AuthTokenExpiredFailure;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$AuthTokenExpiredFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V

    return-void
.end method

.method public final setDocumentTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_documentTitle:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setFailedResult(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errMessage"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Failure;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Failure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V

    return-void
.end method

.method public final setOriginalQueries(Ljava/util/List;)V
    .locals 1
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->originalQueries:Ljava/util/List;

    return-void
.end method

.method public final setOriginalSummarizedBody(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->originalSummarizedBody:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->originalTitle:Ljava/lang/String;

    return-void
.end method

.method public final setTranslateSourceLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_translateSourceLiveData:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTranslateTargetLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_translateTargetLiveData:Landroidx/lifecycle/X;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->_isTargetChanged:Landroidx/lifecycle/X;

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTranslated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->translated:Z

    return-void
.end method
