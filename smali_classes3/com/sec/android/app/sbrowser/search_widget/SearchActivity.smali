.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/search_widget/SearchActivityDelegate;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 Y2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001YB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0006J\u0017\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000fJ\u000f\u0010\u001b\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u0006J\u000f\u0010\u001c\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0006J\u000f\u0010!\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008!\u0010\u0006J\u000f\u0010\"\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0006J\u0017\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0006J\u001d\u0010*\u001a\u00020\t2\u000c\u0010)\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010(H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008,\u0010\u0006J\u001f\u0010/\u001a\u00020\t2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00081\u0010\u0006J\u000f\u00102\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u00084\u00103J\u0019\u00105\u001a\u00020\t2\u0008\u0010.\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u00085\u0010\u000fJ\u000f\u00106\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00086\u0010\u0006R\u0016\u00108\u001a\u0002078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u001c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00150@8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0018\u0010G\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u001b\u0010N\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u001b\u0010S\u001a\u00020O8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010K\u001a\u0004\u0008Q\u0010RR\u001b\u0010X\u001a\u00020T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010K\u001a\u0004\u0008V\u0010W\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;",
        "Lcom/sec/android/app/sbrowser/common/BaseActivity;",
        "Lcom/sec/android/app/sbrowser/common/model/search_widget/SearchActivityDelegate;",
        "Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;",
        "Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ldb/r;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "keyword",
        "search",
        "(Ljava/lang/String;)V",
        "onResume",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "key",
        "onBrowserPreferenceChanged",
        "onDestroy",
        "getScreenID",
        "()Ljava/lang/String;",
        "updateViewPadding",
        "initializeView",
        "initializeContentView",
        "initializeViewModel",
        "initializeTerraceHelper",
        "",
        "type",
        "updateMainAdapterType",
        "(I)V",
        "updateAdapterIfRequired",
        "Landroidx/recyclerview/widget/u0;",
        "adapter",
        "setAdapter",
        "(Landroidx/recyclerview/widget/u0;)V",
        "initializeListener",
        "displayText",
        "url",
        "loadUrl",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "launchVoiceRecognizer",
        "SviIntent",
        "()Landroid/content/Intent;",
        "GviIntent",
        "startActivityWithUrl",
        "voiceSearchIfRequired",
        "Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;",
        "Lcom/sec/android/app/sbrowser/search_widget/SearchBar;",
        "searchBar",
        "Lcom/sec/android/app/sbrowser/search_widget/SearchBar;",
        "Landroidx/recyclerview/widget/O0;",
        "scrollListener",
        "Landroidx/recyclerview/widget/O0;",
        "Landroidx/activity/result/b;",
        "activityResultLauncher",
        "Landroidx/activity/result/b;",
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;",
        "searchHistoryContentsAdapter",
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;",
        "Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;",
        "suggestionSearchWindowAdapter",
        "Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;",
        "searchHistoryViewModel$delegate",
        "Ldb/f;",
        "getSearchHistoryViewModel",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;",
        "searchHistoryViewModel",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "searchWindowViewModel$delegate",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activityResultLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation
.end field

.field private binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

.field private scrollListener:Landroidx/recyclerview/widget/O0;

.field private searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final searchHistoryViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private suggestionSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/b;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchHistoryViewModel$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/b;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchWindowViewModel$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/b;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchWidgetViewModel$delegate:Ldb/f;

    return-void
.end method

.method private final GviIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "calling_package"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private final SviIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeViewModel$lambda$10(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchHistoryViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    return-object p0
.end method

.method private final getSearchWidgetViewModel()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchWidgetViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    return-object p0
.end method

.method private final getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchWindowViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchWidgetViewModel_delegate$lambda$2(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Ljava/lang/Integer;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeViewModel$lambda$5(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Ljava/lang/Integer;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final initializeContentView()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->suggestionSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->scrollListener:Landroidx/recyclerview/widget/O0;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setHistoryLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p0, "scrollListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final initializeListener()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$initializeListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$initializeListener$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->scrollListener:Landroidx/recyclerview/widget/O0;

    new-instance v0, Landroidx/fragment/app/a0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/fragment/app/a0;-><init>(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/p;->registerForActivityResult(Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->activityResultLauncher:Landroidx/activity/result/b;

    return-void
.end method

.method private static final initializeListener$lambda$11(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VoiceRecognizer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroidx/activity/result/ActivityResult;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SearchActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->toResult(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;

    move-result-object p1

    const-string v0, "toResult(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V

    :cond_1
    return-void
.end method

.method private final initializeTerraceHelper()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotEnoughStorage"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showStorageFullDialog(Landroid/content/Context;)Lm/l;

    :cond_0
    :goto_0
    return-void
.end method

.method private final initializeView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeContentView()V

    return-void
.end method

.method private final initializeViewModel()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->setFromWidget(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->getHistoryItemSelectedEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/search_widget/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/c;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSearchWindowMainAdapterType()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/search_widget/c;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/c;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchWidgetViewModel()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;->getRequestSearchEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/search_widget/c;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/c;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchWidgetViewModel()Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;->getVoiceButtonClickedEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/search_widget/c;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/c;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSuggestionItemSelectedEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/search_widget/c;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/c;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->setIsFromWidget(Z)V

    return-void
.end method

.method private static final initializeViewModel$lambda$10(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;-><init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->sendEventLog()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final initializeViewModel$lambda$4(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->search(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "7513"

    const-string v0, "RECENT"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final initializeViewModel$lambda$5(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Ljava/lang/Integer;)Ldb/r;
    .locals 1

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->updateMainAdapterType(I)V

    return-object v0
.end method

.method private static final initializeViewModel$lambda$7(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->search(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "7511"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final initializeViewModel$lambda$8(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->launchVoiceRecognizer()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeListener$lambda$11(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeViewModel$lambda$4(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeViewModel$lambda$7(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final launchVoiceRecognizer()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->SviIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->GviIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->activityResultLauncher:Landroidx/activity/result/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "activityResultLauncher"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SearchActivity"

    const-string v1, "[onLoadUrl]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->insert(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->searchBarBinding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchKeyword:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->startActivityWithUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeViewModel$lambda$8(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchHistoryViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchWindowViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0
.end method

.method private static final searchHistoryViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 1

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    return-object p0
.end method

.method private static final searchWidgetViewModel_delegate$lambda$2(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;
    .locals 1

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    return-object p0
.end method

.method private static final searchWindowViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModelProvider;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final setAdapter(Landroidx/recyclerview/widget/u0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/u0;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final startActivityWithUrl(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sec.android.app.sbrowser.beta_SEARCH_WIDGET_LAUNCH_MAIN_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private final updateAdapterIfRequired()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSaveRecentSearches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    :goto_1
    return-void
.end method

.method private final updateMainAdapterType(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->suggestionSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->updateAdapterIfRequired()V

    :goto_0
    return-void
.end method

.method private final updateViewPadding()V
    .locals 8

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f44

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v4, 0x0

    const-string v5, "binding"

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f070f46

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    :goto_0
    div-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v6, 0x3fc47ae147ae147cL    # 0.16000000000000003

    mul-double/2addr v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4
.end method

.method private final voiceSearchIfRequired()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.sec.android.app.sbrowser.beta.search.widget.SEARCH.ACTIVITY"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "750"

    if-eqz v1, :cond_1

    const-string v0, "7501"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "com.sec.android.app.sbrowser.beta.search.widget.SEARCH.ACTIVITY_WITH_VOICE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "7502"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->launchVoiceRecognizer()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "7510"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "750"

    return-object p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "pref_night_mode"

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    const-string v0, "pref_high_contrast_mode"

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->updateViewPadding()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/SALoggingInitializer;->initialize(Landroid/app/Application;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeTerraceHelper()V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/n;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->searchBarBinding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeViewModel()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->voiceSearchIfRequired()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->updateViewPadding()V

    return-void

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lm/n;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->destroy()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/p;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->voiceSearchIfRequired()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->updateAdapterIfRequired()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->updateBackground()V

    :cond_0
    return-void
.end method

.method public final search(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyword"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SearchActivity"

    const-string v1, "[onSearchByKeyword]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->insert(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->getUrlByKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->startActivityWithUrl(Ljava/lang/String;)V

    return-void
.end method
