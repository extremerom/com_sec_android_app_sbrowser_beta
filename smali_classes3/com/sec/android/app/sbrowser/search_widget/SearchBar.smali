.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_widget/SearchBar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 [2\u00020\u0001:\u0001[B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\r\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\r\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u000cJ\r\u0010\u0013\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\r\u0010\u0014\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\r\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0015\u0010\u000cJ\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008&\u0010 J\u001f\u0010)\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008+\u0010\u000cJ\u000f\u0010,\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008,\u0010\u000cJ\u0017\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00100\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00080\u0010/J\u000f\u00101\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00081\u0010\u000cJ\u000f\u00102\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00082\u0010\u000cJ\u0019\u00104\u001a\u00020\n2\u0008\u00103\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u00084\u0010$J\u000f\u00105\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00085\u0010\u000cJ\u0011\u00106\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u00086\u0010\u0011J\u000f\u00107\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00087\u0010\u000cJ\u0017\u00109\u001a\u00020\n2\u0006\u00108\u001a\u00020!H\u0002\u00a2\u0006\u0004\u00089\u0010$J\u0019\u0010:\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008:\u0010\u0018R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010B\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0018\u0010E\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010H\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010K\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010MR\u0016\u0010N\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001b\u0010U\u001a\u00020P8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR\u001b\u0010Z\u001a\u00020V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010R\u001a\u0004\u0008X\u0010Y\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_widget/SearchBar;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Ldb/r;",
        "onAttachedToWindow",
        "()V",
        "updateBackground",
        "destroy",
        "",
        "getCurrentSearchEngine",
        "()Ljava/lang/String;",
        "clearKeyword",
        "showKeyboardIfRequired",
        "onClearButtonClick",
        "onVoiceButtonClick",
        "keyword",
        "getUrlByKeyword",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;",
        "result",
        "onVoiceRecognizerResult",
        "(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V",
        "",
        "hasWindowFocus",
        "onWindowFocusChanged",
        "(Z)V",
        "Landroid/view/View;",
        "historyLayout",
        "setHistoryLayout",
        "(Landroid/view/View;)V",
        "isDarkModeEnabled",
        "updateStatusBarTheme",
        "isHighContrast",
        "isNightMode",
        "updateTextColor",
        "(ZZ)V",
        "setTooltipText",
        "initializeSearchEngine",
        "title",
        "setSearchEngineDescription",
        "(Ljava/lang/String;)V",
        "setSearchEngineButtonImage",
        "dismissSearchEngineListPopup",
        "setEditTextListener",
        "nextFocusView",
        "requestFocusInEditText",
        "searchByKeyword",
        "getKeyword",
        "hideKeyboard",
        "view",
        "onSearchEngineButtonClick",
        "getReplacedUrlFromDefaultSearchEngine",
        "Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;",
        "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;",
        "searchEngineController",
        "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;",
        "Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;",
        "searchEngineHelper",
        "Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;",
        "Landroid/view/ViewGroup;",
        "searchEngineLayout",
        "Landroid/view/ViewGroup;",
        "Landroid/widget/ImageView;",
        "searchEngineIcon",
        "Landroid/widget/ImageView;",
        "Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;",
        "editText",
        "Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;",
        "Landroid/view/View;",
        "currentSearchEngine",
        "Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "searchWindowViewModel$delegate",
        "Ldb/f;",
        "getSearchWindowViewModel",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "searchWindowViewModel",
        "Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;",
        "searchWidgetViewModel$delegate",
        "getSearchWidgetViewModel",
        "()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;",
        "searchWidgetViewModel",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchBar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentSearchEngine:Ljava/lang/String;

.field private editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private historyLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchEngineIcon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchEngineLayout:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final searchWidgetViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchWindowViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchBar$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILtb/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/search_widget/d;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchWindowViewModel$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/d;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/search_widget/d;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchWidgetViewModel$delegate:Ldb/f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILtb/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setEditTextListener$lambda$10(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissSearchEngineListPopup(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->dismissSearchEngineListPopup()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    return-object p0
.end method

.method public static final synthetic access$getSearchWindowViewModel(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hideKeyboard(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->hideKeyboard()V

    return-void
.end method

.method public static final synthetic access$setCurrentSearchEngine$p(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->currentSearchEngine:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSearchEngineButtonImage(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setSearchEngineButtonImage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setSearchEngineDescription(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setSearchEngineDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->onVoiceRecognizerResult$lambda$16(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setEditTextListener$lambda$6(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchWidgetViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final dismissSearchEngineListPopup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->dismissPopup()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setEditTextListener$lambda$9(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->onSearchEngineButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchWindowViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getKeyword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getReplacedUrlFromDefaultSearchEngine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getFirstSearchEngineName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getSearchEngineUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_3

    const-string v0, "{searchTerms}"

    invoke-static {p0, v0, p1}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "get replaced url : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchBar"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private final getSearchWidgetViewModel()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchWidgetViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    return-object p0
.end method

.method private final getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchWindowViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method private final hideKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private final initializeSearchEngine()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineButtonLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineIcon:Landroid/widget/ImageView;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-nez v0, :cond_7

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/app/Activity;

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    new-instance v3, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->currentSearchEngine:Ljava/lang/String;

    const-string v2, "currentSearchEngine"

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setSearchEngineDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->currentSearchEngine:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setSearchEngineButtonImage(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz p0, :cond_8

    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->WIDGET:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setLaunchType(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;)V

    :cond_8
    return-void
.end method

.method private final onSearchEngineButtonClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->showSearchEnginePopup(Landroid/view/View;)V

    const-string p0, "751"

    const-string p1, "7515"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final onVoiceRecognizerResult$lambda$16(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private final requestFocusInEditText(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->hideKeyboard()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private final searchByKeyword()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getKeyword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->hideKeyboard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getSearchWidgetViewModel()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;->requestSearch(Ljava/lang/String;)V

    return-void
.end method

.method private static final searchWidgetViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;
    .locals 1

    new-instance v0, LZ3/x;

    invoke-static {p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    return-object p0
.end method

.method private static final searchWindowViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 1

    new-instance v0, LZ3/x;

    invoke-static {p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method private final setEditTextListener()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchKeyword:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->clearKeyword()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->showKeyboardIfRequired()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz v0, :cond_1

    new-instance v1, LFa/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LFa/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getEditText()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/J;

    new-instance v2, LC9/b;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz v0, :cond_3

    new-instance v1, LFa/e;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, LFa/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_3
    return-void
.end method

.method private static final setEditTextListener$lambda$10(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    const/16 p3, 0x42

    if-eq p2, p3, :cond_2

    const/16 p3, 0xa0

    if-eq p2, p3, :cond_2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;->isCursorOnEndPosition()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->requestFocusInEditText(Landroid/view/View;)V

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->requestFocusInEditText(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;->isCursorOnStartPosition()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineButtonLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->requestFocusInEditText(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->historyLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->requestFocusInEditText(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchByKeyword()V

    goto :goto_0

    :cond_3
    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final setEditTextListener$lambda$6(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchByKeyword()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final setEditTextListener$lambda$9(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)Ldb/r;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final setSearchEngineButtonImage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineLayout:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setSearchEngineButtonImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setSearchEngineDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setSearchEngineDescription(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setTooltipText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final updateStatusBarTheme(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    return-void
.end method

.method private final updateTextColor(ZZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010099

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "obtainStyledAttributes(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f060d99

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060d9f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const p1, 0x7f060d9b

    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final clearKeyword()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    return-void
.end method

.method public final getCurrentSearchEngine()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->currentSearchEngine:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "currentSearchEngine"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getUrlByKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "Failed to decode URL for search query."

    const-string v1, "get url from terrace : "

    const-string v2, "keyword"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "SearchBar"

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAboutUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getTopSuggestion()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "top suggestion url : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get url from guessUrl : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v4

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getReplacedUrlFromDefaultSearchEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-object v2, p1

    goto :goto_0

    :catch_1
    move-object v2, p1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object v2, p1

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListForSearchEngineListPopupAdapter()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v4

    :goto_4
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getTitle(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getSearchUri()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getSearchUri(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "{searchTerms}"

    invoke-static {p0, v0, p1}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "replace keyword in search uri : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid URL : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5

    :cond_9
    move-object p0, v4

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Landroidx/databinding/f;->a:Landroidx/databinding/DataBinderMapperImpl;

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroidx/databinding/k;->getBinding(Landroid/view/View;)Landroidx/databinding/k;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    const-string v3, "layout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "_0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v3, v4, :cond_1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_1
    const/16 v7, 0x2d

    if-ne v3, v7, :cond_2

    if-eq v5, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_1
    check-cast v1, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->setSearchBarBinding(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setEditTextListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->updateBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setTooltipText()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->initializeSearchEngine()V

    return-void
.end method

.method public final onClearButtonClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->clearKeyword()V

    return-void
.end method

.method public final onVoiceButtonClick()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->hideKeyboard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getSearchWidgetViewModel()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;->onVoiceButtonClicked()V

    const-string p0, "751"

    const-string v0, "7516"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SearchBar"

    const-string v1, "onVoiceRecognizerResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->keyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->isConfidential()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onVoiceRecognizerResult, loadUrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->clearKeyword()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getSearchWidgetViewModel()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object p0

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;->requestSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "onVoiceRecognizerResult, confidenceScore is low"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->showKeyboardIfRequired()V

    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setSearchEngineToNative(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->setSearchEngineToNative(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final setHistoryLayout(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->historyLayout:Landroid/view/View;

    return-void
.end method

.method public final showKeyboardIfRequired()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->searchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->editText:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboardWithDelayIfFocused(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final updateBackground()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->updateStatusBarTheme(Z)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->updateTextColor(ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    const v3, 0x7f080565

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineSpinnerButton:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0609b5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f08042d

    goto :goto_2

    :cond_4
    const v3, 0x7f08042c

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_6

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    if-nez v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0609b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SEARCHBAR:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0609b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SEARCHBAR_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    return-void
.end method
