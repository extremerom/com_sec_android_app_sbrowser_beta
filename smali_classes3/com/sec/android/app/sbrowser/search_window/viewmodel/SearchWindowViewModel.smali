.class public final Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008!\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\u0017\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\u001d\u0010\u001d\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u001b0\u001a\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\u0015\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010$\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008$\u0010#J\r\u0010%\u001a\u00020\u0004\u00a2\u0006\u0004\u0008%\u0010\u0003J\u0015\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\'\u0010\u000cJ\r\u0010(\u001a\u00020\u0004\u00a2\u0006\u0004\u0008(\u0010\u0003J\r\u0010)\u001a\u00020\u0004\u00a2\u0006\u0004\u0008)\u0010\u0003J\u001b\u0010,\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020+\u0018\u00010*0\u001a\u00a2\u0006\u0004\u0008,\u0010\u001eJ\u0015\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020+\u00a2\u0006\u0004\u0008.\u0010/J\u0015\u00100\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u00080\u0010\u000cJ\u0015\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u0006\u00a2\u0006\u0004\u00082\u0010\u000cR\u001c\u00105\u001a\n 4*\u0004\u0018\u000103038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u001c\u00108\u001a\n 4*\u0004\u0018\u000107078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00060=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u001d\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008@\u0010\u001eR\u001a\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00060=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010?R\u001d\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008C\u0010A\u001a\u0004\u0008C\u0010\u001eR\u001a\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00060=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010?R\u001a\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u000e0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010?R\u001d\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u0010A\u001a\u0004\u0008G\u0010\u001eR\"\u0010H\u001a\u0010\u0012\u000c\u0012\n 4*\u0004\u0018\u00010\u000e0\u000e0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010AR\u001a\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u000e0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010?R\u001d\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008J\u0010A\u001a\u0004\u0008K\u0010\u001eR\"\u0010L\u001a\u0010\u0012\u000c\u0012\n 4*\u0004\u0018\u00010\u000e0\u000e0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010?R\u001d\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010A\u001a\u0004\u0008N\u0010\u001eR\u001a\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u00060=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010?R\u001d\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008P\u0010A\u001a\u0004\u0008Q\u0010\u001eR\u001c\u0010R\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010?R\u001c\u0010S\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010?R\u001f\u0010T\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008T\u0010A\u001a\u0004\u0008U\u0010\u001eR\u001b\u0010[\u001a\u00020V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010ZR\u001d\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\\0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u0010A\u001a\u0004\u0008^\u0010\u001eR\"\u0010_\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\\\u0018\u00010*0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008_\u0010?R%\u0010`\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\\\u0018\u00010*0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008`\u0010A\u001a\u0004\u0008a\u0010\u001eR\"\u0010b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020+\u0018\u00010*0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010?R\u0014\u0010d\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0014\u0010f\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010eR \u0010h\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020g0*0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010?R#\u0010i\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020g0*0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008i\u0010A\u001a\u0004\u0008j\u0010\u001eR \u0010k\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0*0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010?R#\u0010l\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0*0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010A\u001a\u0004\u0008m\u0010\u001eR \u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0*0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008n\u0010?R#\u0010o\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0*0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010A\u001a\u0004\u0008p\u0010\u001eR\"\u0010q\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008q\u0010r\u001a\u0004\u0008q\u0010\u0008\"\u0004\u0008s\u0010\u000cR\"\u0010t\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010yR\u001d\u0010z\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008z\u0010A\u001a\u0004\u0008{\u0010\u001eR\u001d\u0010|\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008|\u0010A\u001a\u0004\u0008}\u0010\u001eR\u001d\u0010~\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008~\u0010A\u001a\u0004\u0008\u007f\u0010\u001eR \u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0080\u0001\u0010A\u001a\u0005\u0008\u0081\u0001\u0010\u001eR \u0010\u0082\u0001\u001a\u0008\u0012\u0004\u0012\u00020\\0\u001a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0082\u0001\u0010A\u001a\u0005\u0008\u0083\u0001\u0010\u001eR&\u0010\u0084\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060*0\u001a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0084\u0001\u0010A\u001a\u0005\u0008\u0085\u0001\u0010\u001eR\u001b\u0010\u0087\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001a8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010\u001e\u00a8\u0006\u0088\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "Landroidx/lifecycle/s0;",
        "<init>",
        "()V",
        "Ldb/r;",
        "onCleared",
        "",
        "isDarkTheme",
        "()Z",
        "consumeSearchEngineChangedEvent",
        "enable",
        "updateSecretMode",
        "(Z)V",
        "updateReaderMode",
        "",
        "url",
        "updateCurrentTabUrl",
        "(Ljava/lang/String;)V",
        "text",
        "updateUrlBarText",
        "updateEditText",
        "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
        "suggestion",
        "updateTopSuggestion",
        "(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V",
        "updateAutocompleteText",
        "Landroidx/lifecycle/S;",
        "",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
        "getQuickAccessItems",
        "()Landroidx/lifecycle/S;",
        "requestQuickAccessBackgroundInfo",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;",
        "searchSuggestionItem",
        "onSuggestionItemSelected",
        "(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V",
        "onLongClickSuggestionItemSelected",
        "onSearchEngineChanged",
        "fromWidget",
        "setIsFromWidget",
        "onQuickAccessEditModeRequested",
        "onDismissRequested",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;",
        "getQuickAccessAddEvent",
        "parameter",
        "onQuickAccessAddRequested",
        "(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V",
        "updateIsNewQuickAccessPage",
        "isNotEmpty",
        "updateDataLakeSuggestion",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;",
        "kotlin.jvm.PlatformType",
        "quickAccessRepository",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;",
        "backgroundInfoRepository",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;",
        "searchHistoryRepository",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;",
        "Landroidx/lifecycle/X;",
        "_isSecretMode",
        "Landroidx/lifecycle/X;",
        "isSecretMode",
        "Landroidx/lifecycle/S;",
        "_isNewQuickAccessPage",
        "isNewQuickAccessPage",
        "isReaderMode",
        "_currentTabUrl",
        "currentTabUrl",
        "getCurrentTabUrl",
        "currentTabUrlLiveData",
        "_urlBarText",
        "urlBarText",
        "getUrlBarText",
        "_editText",
        "editText",
        "getEditText",
        "_dataLakeSuggestionExists",
        "dataLakeSuggestionExists",
        "getDataLakeSuggestionExists",
        "_topSuggestion",
        "_autocompleteText",
        "autocompleteText",
        "getAutocompleteText",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;",
        "_themeLiveData$delegate",
        "Ldb/f;",
        "get_themeLiveData",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;",
        "_themeLiveData",
        "",
        "theme",
        "getTheme",
        "_event",
        "event",
        "getEvent",
        "_quickAccessAddEvent",
        "Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;",
        "urlSuggestionVisibility",
        "Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;",
        "recentSearchEnabled",
        "",
        "_searchEngineChangedEvent",
        "searchEngineChangedEvent",
        "getSearchEngineChangedEvent",
        "_suggestionItemSelectedEvent",
        "suggestionItemSelectedEvent",
        "getSuggestionItemSelectedEvent",
        "_longClickSuggestionItemSelectedEvent",
        "longClickSuggestionItemSelectedEvent",
        "getLongClickSuggestionItemSelectedEvent",
        "isFromWidget",
        "Z",
        "setFromWidget",
        "suggestionCount",
        "I",
        "getSuggestionCount",
        "()I",
        "setSuggestionCount",
        "(I)V",
        "quickAccessAddButtonVisibility",
        "getQuickAccessAddButtonVisibility",
        "quickAccessEditButtonVisibility",
        "getQuickAccessEditButtonVisibility",
        "quickAccessVisibility",
        "getQuickAccessVisibility",
        "searchHistoryVisibility",
        "getSearchHistoryVisibility",
        "searchWindowMainAdapterType",
        "getSearchWindowMainAdapterType",
        "searchWindowVisibility",
        "getSearchWindowVisibility",
        "getTopSuggestion",
        "topSuggestion",
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


# instance fields
.field private final _autocompleteText:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _currentTabUrl:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _dataLakeSuggestionExists:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _editText:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _event:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _isNewQuickAccessPage:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _isSecretMode:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _longClickSuggestionItemSelectedEvent:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _quickAccessAddEvent:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _searchEngineChangedEvent:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _suggestionItemSelectedEvent:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _themeLiveData$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _topSuggestion:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _urlBarText:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final autocompleteText:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundInfoRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

.field private final currentTabUrl:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentTabUrlLiveData:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dataLakeSuggestionExists:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final editText:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final event:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isFromWidget:Z

.field private final isNewQuickAccessPage:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isReaderMode:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isSecretMode:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final longClickSuggestionItemSelectedEvent:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessAddButtonVisibility:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessEditButtonVisibility:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

.field private final quickAccessVisibility:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentSearchEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchEngineChangedEvent:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchHistoryRepository:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchHistoryVisibility:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchWindowMainAdapterType:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchWindowVisibility:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private suggestionCount:I

.field private final suggestionItemSelectedEvent:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final theme:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final urlBarText:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final urlSuggestionVisibility:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/lifecycle/s0;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->create()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    move-result-object v6

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->backgroundInfoRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    sget-object v6, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "getApplicationContext(...)"

    invoke-static {v7, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9, v8}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;Landroid/content/Context;LNc/x;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object v6

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchHistoryRepository:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    new-instance v7, Landroidx/lifecycle/X;

    invoke-direct {v7}, Landroidx/lifecycle/S;-><init>()V

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_isSecretMode:Landroidx/lifecycle/X;

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isSecretMode:Landroidx/lifecycle/S;

    new-instance v10, Landroidx/lifecycle/X;

    invoke-direct {v10}, Landroidx/lifecycle/S;-><init>()V

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_isNewQuickAccessPage:Landroidx/lifecycle/X;

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isNewQuickAccessPage:Landroidx/lifecycle/S;

    new-instance v10, Landroidx/lifecycle/X;

    invoke-direct {v10}, Landroidx/lifecycle/S;-><init>()V

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isReaderMode:Landroidx/lifecycle/X;

    new-instance v11, Landroidx/lifecycle/X;

    invoke-direct {v11}, Landroidx/lifecycle/S;-><init>()V

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_currentTabUrl:Landroidx/lifecycle/X;

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->currentTabUrl:Landroidx/lifecycle/S;

    invoke-static {v11}, Landroidx/lifecycle/l0;->f(Landroidx/lifecycle/S;)Landroidx/lifecycle/W;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->currentTabUrlLiveData:Landroidx/lifecycle/S;

    new-instance v13, Landroidx/lifecycle/X;

    invoke-direct {v13}, Landroidx/lifecycle/S;-><init>()V

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_urlBarText:Landroidx/lifecycle/X;

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->urlBarText:Landroidx/lifecycle/S;

    new-instance v14, Landroidx/lifecycle/X;

    const-string v15, ""

    invoke-direct {v14, v15}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_editText:Landroidx/lifecycle/X;

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->editText:Landroidx/lifecycle/S;

    new-instance v14, Landroidx/lifecycle/X;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v14, v15}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_dataLakeSuggestionExists:Landroidx/lifecycle/X;

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->dataLakeSuggestionExists:Landroidx/lifecycle/S;

    new-instance v14, Landroidx/lifecycle/X;

    invoke-direct {v14}, Landroidx/lifecycle/S;-><init>()V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_topSuggestion:Landroidx/lifecycle/X;

    new-instance v14, Landroidx/lifecycle/X;

    invoke-direct {v14}, Landroidx/lifecycle/S;-><init>()V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_autocompleteText:Landroidx/lifecycle/X;

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->autocompleteText:Landroidx/lifecycle/S;

    new-instance v14, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;

    invoke-direct {v14, v9, v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v14}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v14

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_themeLiveData$delegate:Ldb/f;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->get_themeLiveData()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;

    move-result-object v14

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->theme:Landroidx/lifecycle/S;

    new-instance v14, Landroidx/lifecycle/X;

    invoke-direct {v14}, Landroidx/lifecycle/S;-><init>()V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_event:Landroidx/lifecycle/X;

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->event:Landroidx/lifecycle/S;

    new-instance v14, Landroidx/lifecycle/X;

    invoke-direct {v14}, Landroidx/lifecycle/S;-><init>()V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_quickAccessAddEvent:Landroidx/lifecycle/X;

    new-instance v14, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "search_suggestions"

    invoke-direct {v14, v15, v2, v8}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->urlSuggestionVisibility:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v9, "save_recent_searches"

    invoke-direct {v2, v15, v9, v8}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->recentSearchEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v8, Landroidx/lifecycle/X;

    invoke-direct {v8}, Landroidx/lifecycle/S;-><init>()V

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_searchEngineChangedEvent:Landroidx/lifecycle/X;

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchEngineChangedEvent:Landroidx/lifecycle/S;

    new-instance v9, Landroidx/lifecycle/X;

    invoke-direct {v9}, Landroidx/lifecycle/S;-><init>()V

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_suggestionItemSelectedEvent:Landroidx/lifecycle/X;

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->suggestionItemSelectedEvent:Landroidx/lifecycle/S;

    new-instance v9, Landroidx/lifecycle/X;

    invoke-direct {v9}, Landroidx/lifecycle/S;-><init>()V

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_longClickSuggestionItemSelectedEvent:Landroidx/lifecycle/X;

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->longClickSuggestionItemSelectedEvent:Landroidx/lifecycle/S;

    invoke-static {v7}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v9

    invoke-static {v10}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v10

    invoke-static {v11}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v15

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v4

    const-string v3, "getItems(...)"

    invoke-static {v4, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v4

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessAddButtonVisibility$1;

    move-object/from16 v16, v8

    sget-object v8, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;

    invoke-direct {v1, v8}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessAddButtonVisibility$1;-><init>(Ljava/lang/Object;)V

    move-object/from16 v17, v14

    const/4 v8, 0x4

    new-array v14, v8, [LQc/h;

    const/4 v8, 0x0

    aput-object v9, v14, v8

    const/4 v8, 0x1

    aput-object v10, v14, v8

    const/4 v9, 0x2

    aput-object v15, v14, v9

    const/4 v10, 0x3

    aput-object v4, v14, v10

    new-instance v4, LQc/c0;

    invoke-direct {v4, v14, v1, v8}, LQc/c0;-><init>([LQc/h;Ldb/b;I)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v1

    invoke-interface {v1}, LNc/B;->v()Lib/h;

    move-result-object v1

    invoke-static {v4, v1, v9}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessAddButtonVisibility:Landroidx/lifecycle/S;

    invoke-static {v7}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v1

    invoke-static {v11}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v8

    invoke-static {v8, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessEditButtonVisibility$1;

    sget-object v10, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessEditButtonVisibility;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessEditButtonVisibility;

    invoke-direct {v9, v10}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessEditButtonVisibility$1;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x3

    new-array v11, v10, [LQc/h;

    const/4 v10, 0x0

    aput-object v1, v11, v10

    const/4 v1, 0x1

    aput-object v4, v11, v1

    const/4 v1, 0x2

    aput-object v8, v11, v1

    new-instance v4, LQc/c0;

    invoke-direct {v4, v11, v9, v10}, LQc/c0;-><init>([LQc/h;Ldb/b;I)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v8

    invoke-interface {v8}, LNc/B;->v()Lib/h;

    move-result-object v8

    invoke-static {v4, v8, v1}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessEditButtonVisibility:Landroidx/lifecycle/S;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v1

    invoke-static {v12}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessVisibility$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessVisibility$1;-><init>(Lib/c;)V

    new-instance v5, LQc/y;

    invoke-direct {v5, v4, v3}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessVisibility$2;

    sget-object v4, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessVisibility;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessVisibility;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessVisibility$2;-><init>(Ljava/lang/Object;)V

    new-instance v4, LL2/l;

    const/4 v8, 0x1

    invoke-direct {v4, v1, v5, v3, v8}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v1

    invoke-interface {v1}, LNc/B;->v()Lib/h;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v4, v1, v3}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessVisibility:Landroidx/lifecycle/S;

    invoke-static {v2}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v2

    invoke-static {v7}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->getHistory()Landroidx/lifecycle/S;

    move-result-object v4

    invoke-static {v4}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchHistoryVisibility$1;

    sget-object v6, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchHistoryVisibility$1;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x3

    new-array v7, v6, [LQc/h;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v2, 0x2

    aput-object v4, v7, v2

    new-instance v3, LQc/c0;

    invoke-direct {v3, v7, v5, v6}, LQc/c0;-><init>([LQc/h;Ldb/b;I)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v4

    invoke-interface {v4}, LNc/B;->v()Lib/h;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchHistoryVisibility:Landroidx/lifecycle/S;

    invoke-static {v13}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$1;-><init>(Lib/c;)V

    new-instance v5, LQc/y;

    invoke-direct {v5, v3, v2}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    invoke-static {v12}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$2;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$2;-><init>(Lib/c;)V

    new-instance v6, LQc/y;

    invoke-direct {v6, v3, v2}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    invoke-static/range {v17 .. v17}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v3

    new-instance v7, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$3;

    invoke-direct {v7, v4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$3;-><init>(Lib/c;)V

    new-instance v4, LQc/y;

    invoke-direct {v4, v7, v3}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$4;

    sget-object v7, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;

    invoke-direct {v3, v7}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$4;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x4

    new-array v7, v7, [LQc/h;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    const/4 v6, 0x2

    aput-object v2, v7, v6

    const/4 v2, 0x3

    aput-object v4, v7, v2

    new-instance v2, LQc/c0;

    invoke-direct {v2, v7, v3, v5}, LQc/c0;-><init>([LQc/h;Ldb/b;I)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v3

    invoke-interface {v3}, LNc/B;->v()Lib/h;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchWindowMainAdapterType:Landroidx/lifecycle/S;

    invoke-static {v1}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowVisibility$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowVisibility$1;-><init>(Lib/c;)V

    new-instance v4, LQc/y;

    invoke-direct {v4, v3, v1}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    invoke-static {v2}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowVisibility$2;

    sget-object v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowVisibility$2;-><init>(Ljava/lang/Object;)V

    new-instance v3, LL2/l;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, v2, v5}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$special$$inlined$map$1;

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$special$$inlined$map$1;-><init>(LQc/h;)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v2

    invoke-interface {v2}, LNc/B;->v()Lib/h;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchWindowVisibility:Landroidx/lifecycle/S;

    return-void
.end method

.method private static final _themeLiveData_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;-><init>(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isReaderMode:Landroidx/lifecycle/X;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->addReaderModeSource(Landroidx/lifecycle/S;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isSecretMode:Landroidx/lifecycle/S;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->addSecretModeSource(Landroidx/lifecycle/S;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isNewQuickAccessPage:Landroidx/lifecycle/S;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->addNewQuickAccessSource(Landroidx/lifecycle/S;)V

    return-object v0
.end method

.method public static final synthetic access$quickAccessAddButtonVisibility$isAddButtonVisible(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;ZZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessAddButtonVisibility$isAddButtonVisible(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;ZZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$quickAccessEditButtonVisibility$canEditQuickAccess(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessEditButtonVisibility;ZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessEditButtonVisibility$canEditQuickAccess(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessEditButtonVisibility;ZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$quickAccessVisibility$getVisibility(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessVisibility;Ljava/util/List;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessVisibility$getVisibility(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessVisibility;Ljava/util/List;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchHistoryVisibility$getVisibility$2(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;ZZLjava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchHistoryVisibility$getVisibility$2(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;ZZLjava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchWindowMainAdapterType$updateValue(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchWindowMainAdapterType$updateValue(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchWindowVisibility$getVisibility$3(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;ZILib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchWindowVisibility$getVisibility$3(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;ZILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getQuickAccessItems$lambda$6(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_themeLiveData_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;

    move-result-object p0

    return-object p0
.end method

.method private static final getQuickAccessItems$lambda$6(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final get_themeLiveData()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_themeLiveData$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;

    return-object p0
.end method

.method private static final quickAccessAddButtonVisibility$isAddButtonVisible(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;ZZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;->isAddButtonVisible(ZZLjava/lang/String;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final quickAccessEditButtonVisibility$canEditQuickAccess(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessEditButtonVisibility;ZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessEditButtonVisibility;->canEditQuickAccess(ZLjava/lang/String;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final quickAccessVisibility$getVisibility(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessVisibility;Ljava/util/List;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessVisibility;->getVisibility(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final searchHistoryVisibility$getVisibility$2(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;ZZLjava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;->getVisibility(ZZLjava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final searchWindowMainAdapterType$updateValue(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;->updateValue(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method private static final searchWindowVisibility$getVisibility$3(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;ZILib/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;->getVisibility(ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final consumeSearchEngineChangedEvent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_searchEngineChangedEvent:Landroidx/lifecycle/X;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getAutocompleteText()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->autocompleteText:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getCurrentTabUrl()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->currentTabUrl:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getDataLakeSuggestionExists()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->dataLakeSuggestionExists:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getEditText()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->editText:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->event:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getLongClickSuggestionItemSelectedEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->longClickSuggestionItemSelectedEvent:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getQuickAccessAddButtonVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessAddButtonVisibility:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getQuickAccessAddEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_quickAccessAddEvent:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final getQuickAccessEditButtonVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessEditButtonVisibility:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getQuickAccessItems()Landroidx/lifecycle/S;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    const-string v0, "getItems(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK9/f;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LK9/f;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/lifecycle/l0;->l(Landroidx/lifecycle/X;Lsb/k;)Landroidx/lifecycle/W;

    move-result-object p0

    return-object p0
.end method

.method public final getQuickAccessVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->quickAccessVisibility:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getSearchEngineChangedEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchEngineChangedEvent:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getSearchHistoryVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchHistoryVisibility:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getSearchWindowMainAdapterType()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchWindowMainAdapterType:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getSearchWindowVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->searchWindowVisibility:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getSuggestionCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->suggestionCount:I

    return p0
.end method

.method public final getSuggestionItemSelectedEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->suggestionItemSelectedEvent:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getTheme()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->theme:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getTopSuggestion()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_topSuggestion:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final getUrlBarText()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->urlBarText:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final isDarkTheme()Z
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->theme:Landroidx/lifecycle/S;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isFromWidget()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isFromWidget:Z

    return p0
.end method

.method public final isSecretMode()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isSecretMode:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public onCleared()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_event:Landroidx/lifecycle/X;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_quickAccessAddEvent:Landroidx/lifecycle/X;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDismissRequested()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_event:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLongClickSuggestionItemSelected(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "searchSuggestionItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_longClickSuggestionItemSelectedEvent:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onQuickAccessAddRequested(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parameter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_quickAccessAddEvent:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onQuickAccessEditModeRequested()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_event:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSearchEngineChanged()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_searchEngineChangedEvent:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuggestionItemSelected(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "searchSuggestionItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_suggestionItemSelectedEvent:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final requestQuickAccessBackgroundInfo()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->backgroundInfoRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_isSecretMode:Landroidx/lifecycle/X;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    const-string v2, "popup"

    invoke-virtual {v0, v2, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->requestBackgroundInfo(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final setIsFromWidget(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isFromWidget:Z

    return-void
.end method

.method public final setSuggestionCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->suggestionCount:I

    return-void
.end method

.method public final updateAutocompleteText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_autocompleteText:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateCurrentTabUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_currentTabUrl:Landroidx/lifecycle/X;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateDataLakeSuggestion(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_dataLakeSuggestionExists:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateEditText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_editText:Landroidx/lifecycle/X;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateIsNewQuickAccessPage(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_isNewQuickAccessPage:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateReaderMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isReaderMode:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSecretMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_isSecretMode:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateTopSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_topSuggestion:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateUrlBarText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->_urlBarText:Landroidx/lifecycle/X;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method
