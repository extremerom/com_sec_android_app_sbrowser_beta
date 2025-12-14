.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000q\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u000c\u0008\u0007\u0018\u0000 F2\u00020\u0001:\u0001FB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u001d\u00a2\u0006\u0004\u0008 \u0010\u001fJ\r\u0010!\u001a\u00020\u001d\u00a2\u0006\u0004\u0008!\u0010\u001fJ\r\u0010\"\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\"\u0010\u001fJ\u0015\u0010$\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0014\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010)\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u00142\u0008\u0010(\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0004\u0008)\u0010*R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010+R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010,R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010-R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010.R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u001b\u00109\u001a\u0002058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u00101\u001a\u0004\u00087\u00108R\u001b\u0010>\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u00101\u001a\u0004\u0008<\u0010=R\u001b\u0010C\u001a\u00020?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u00101\u001a\u0004\u0008A\u0010BR\u0011\u0010D\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010E\u00a8\u0006G"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "anchorView",
        "Landroidx/lifecycle/J;",
        "lifecycleOwner",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "viewModel",
        "<init>",
        "(Landroid/content/Context;Landroid/view/View;Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)V",
        "com/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1",
        "suggestionListener",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;",
        "v",
        "Lf1/w0;",
        "insets",
        "insetsForSuggestionListMaxHeight",
        "(Landroid/view/View;Lf1/w0;)Lf1/w0;",
        "",
        "getDistanceToAnchorView",
        "()I",
        "getTopOffset",
        "getBottomOffset",
        "direction",
        "",
        "navigateFocus",
        "(I)Z",
        "Ldb/r;",
        "clearFocus",
        "()V",
        "show",
        "dismiss",
        "clear",
        "width",
        "updateWidth",
        "(I)V",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "event",
        "sendKeyEvent",
        "(ILandroid/view/KeyEvent;)Z",
        "Landroid/content/Context;",
        "Landroid/view/View;",
        "Landroidx/lifecycle/J;",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;",
        "binding$delegate",
        "Ldb/f;",
        "getBinding",
        "()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;",
        "suggestionListView$delegate",
        "getSuggestionListView",
        "()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;",
        "suggestionListView",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;",
        "controller$delegate",
        "getController",
        "()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;",
        "controller",
        "Landroid/widget/PopupWindow;",
        "popup$delegate",
        "getPopup",
        "()Landroid/widget/PopupWindow;",
        "popup",
        "isShowing",
        "()Z",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final anchorView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final binding$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controller$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lifecycleOwner:Landroidx/lifecycle/J;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final popup$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final suggestionListView$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->lifecycleOwner:Landroidx/lifecycle/J;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->binding$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->suggestionListView$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->controller$delegate:Ldb/f;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getUrlBarText()Landroidx/lifecycle/S;

    move-result-object p1

    new-instance v0, LH9/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p4}, LH9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p1, p3, p4}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/g;

    const/4 p3, 0x3

    invoke-direct {p2, p3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/g;-><init>(ILjava/lang/Object;)V

    sget-object p4, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, p2}, Lf1/O;->m(Landroid/view/View;Lf1/v;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;

    invoke-direct {p1, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->popup$delegate:Ldb/f;

    return-void
.end method

.method private static final _init_$lambda$7(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->insetsForSuggestionListMaxHeight(Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object p0

    invoke-static {p1, p0}, Lf1/W;->f(Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->_init_$lambda$7(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Landroid/widget/PopupWindow;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->popup_delegate$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method private static final binding_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    const-string v0, "inflate(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;Ljava/lang/String;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final clearFocus()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method private static final controller_delegate$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getSuggestionListView()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->suggestionListener()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->setListener(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->show$lambda$10$lambda$9(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->suggestionListView_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->controller_delegate$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->binding_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->binding$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    return-object p0
.end method

.method private final getBottomOffset()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f071408

    goto :goto_0

    :cond_0
    const p0, 0x7f071407

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private final getController()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->controller$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    return-object p0
.end method

.method private final getDistanceToAnchorView()I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private final getPopup()Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->popup$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private final getSuggestionListView()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->suggestionListView$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;

    return-object p0
.end method

.method private final getTopOffset()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071409

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private final insetsForSuggestionListMaxHeight(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p2, Lf1/w0;->a:Lf1/u0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v0

    iget v0, v0, LX0/b;->d:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getDistanceToAnchorView()I

    move-result v1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getTopOffset()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBottomOffset()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getSuggestionListView()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;->updateMaxHeight(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "insetsForSuggestionListMaxHeight() maxHeight: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickAccessAddWebSuggestionPopup"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static final lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;Ljava/lang/String;)Ldb/r;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getController()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getCurrentTabUrl()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final navigateFocus(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final popup_delegate$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Landroid/widget/PopupWindow;
    .locals 1

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final show$lambda$10$lambda$9(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)V
    .locals 2

    const-string v0, "QuickAccessAddWebSuggestionPopup"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getController()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;->stopQuery()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateTopSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateAutocompleteText(Ljava/lang/String;)V

    return-void
.end method

.method private static final suggestionListView_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->suggestionPopupList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListView$2$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListView$2$1$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;

    invoke-direct {v1, v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;)V

    return-object v1
.end method

.method private final suggestionListener()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getController()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;->clear()V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getPopup()Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final isShowing()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getPopup()Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final sendKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_6

    const/16 p2, 0x13

    const/4 v1, 0x1

    if-eq p1, p2, :cond_4

    const/16 p2, 0x14

    if-eq p1, p2, :cond_2

    const/16 p2, 0x17

    if-eq p1, p2, :cond_0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    const/16 p1, 0x82

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->navigateFocus(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->clearFocus()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x21

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->navigateFocus(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->clearFocus()V

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method

.method public final show()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const-string v1, "QuickAccessAddWebSuggestionPopup"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "show()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getPopup()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getBinding()Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    const v3, 0x7f080719

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/r;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070fe4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getTopOffset()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getSuggestionListView()Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->context:Landroid/content/Context;

    const v1, 0x7f060c0b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->notifyBackgroundColorChanged(I)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "anchorView is not attached to window, aborting show()"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateWidth(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->getPopup()Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Landroid/widget/PopupWindow;->update(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->anchorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->insetsForSuggestionListMaxHeight(Landroid/view/View;Lf1/w0;)Lf1/w0;

    :cond_1
    return-void
.end method
