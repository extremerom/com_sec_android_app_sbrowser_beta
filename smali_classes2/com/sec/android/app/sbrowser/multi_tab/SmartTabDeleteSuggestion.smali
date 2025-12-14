.class public final Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$Companion;,
        Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 82\u00020\u0001:\u000289B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ9\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ1\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010!\u001a\u0004\u0008\"\u0010#R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010$\u001a\u0004\u0008%\u0010&R\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\'\u001a\u0004\u0008(\u0010)R\u001e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010,\u001a\u00020\u00168\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010/\u001a\u00020.8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u00100R&\u00103\u001a\u0012\u0012\u0004\u0012\u00020\r01j\u0008\u0012\u0004\u0012\u00020\r`28\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00106\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u0006:"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
        "collapsingToolbar",
        "",
        "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
        "tabListItem",
        "<init>",
        "(Landroid/content/Context;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/util/List;)V",
        "",
        "title",
        "",
        "buttonCount",
        "Lcom/google/android/material/appbar/model/ButtonStyle;",
        "buttonStyle",
        "tabCount",
        "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
        "generateItemModelWhiteCase",
        "(Ljava/lang/String;ILcom/google/android/material/appbar/model/ButtonStyle;I)Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;",
        "Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;",
        "listener",
        "Ldb/r;",
        "setSmartTabDeleteSuggestionListener",
        "(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;)V",
        "predictUnimportantTabs",
        "()I",
        "generateSuggestionItemModel",
        "(Lcom/google/android/material/appbar/model/ButtonStyle;Ljava/lang/String;I)Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;",
        "getSuggestAppBarItemModel",
        "()Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
        "getCollapsingToolbar",
        "()Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
        "Ljava/util/List;",
        "getTabListItem",
        "()Ljava/util/List;",
        "suggestAppBarItemModel",
        "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;",
        "suggestionListener",
        "Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;",
        "smartTabDeleteAIModelManager",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "unimportantSet",
        "Ljava/util/HashSet;",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "Companion",
        "SmartTabDeleteSuggestionListener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smartTabDeleteAIModelManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

.field private suggestAppBarItemModel:Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private suggestionListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

.field private final tabListItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private unimportantSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->Companion:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/CollapsingToolbarLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapsingToolbar"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabListItem"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->tabListItem:Ljava/util/List;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "getDefaultSharedPreferences(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final synthetic access$getSharedPreferences$p(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$getSuggestionListener$p(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;)Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->suggestionListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

    return-object p0
.end method

.method public static final synthetic access$getUnimportantSet$p(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->unimportantSet:Ljava/util/HashSet;

    return-object p0
.end method

.method private final generateItemModelWhiteCase(Ljava/lang/String;ILcom/google/android/material/appbar/model/ButtonStyle;I)Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/material/appbar/model/ButtonStyle;",
            "I)",
            "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/google/android/material/appbar/model/ButtonModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14100a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;

    invoke-direct {v2, p0, p4}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;I)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/appbar/model/ButtonModel;-><init>(Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Ljava/lang/String;ILtb/f;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->context:Landroid/content/Context;

    invoke-direct {p4, v0}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p4, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->b:Ljava/lang/String;

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$suggestionView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$suggestionView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;)V

    iput-object p1, p4, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->c:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    iput-object p2, p4, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->d:Ljava/lang/Object;

    if-eqz p3, :cond_0

    iput-object p3, p4, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->e:Lcom/google/android/material/appbar/model/ButtonStyle;

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->a()Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final generateSuggestionItemModel(Lcom/google/android/material/appbar/model/ButtonStyle;Ljava/lang/String;I)Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
    .locals 5
    .param p1    # Lcom/google/android/material/appbar/model/ButtonStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/ButtonStyle;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "title"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_0

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v2, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->generateItemModelWhiteCase(Ljava/lang/String;ILcom/google/android/material/appbar/model/ButtonStyle;I)Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lfb/o;->l()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->suggestAppBarItemModel:Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;

    return-object p1
.end method

.method public final getCollapsingToolbar()Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getSuggestAppBarItemModel()Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->suggestAppBarItemModel:Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;

    return-object p0
.end method

.method public final predictUnimportantTabs()I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->smartTabDeleteAIModelManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->tabListItem:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->predictTabImportance(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->unimportantSet:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "unimportantSet"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "smartTabDeleteAIModelManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final setSmartTabDeleteSuggestionListener(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->suggestionListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

    return-void
.end method
