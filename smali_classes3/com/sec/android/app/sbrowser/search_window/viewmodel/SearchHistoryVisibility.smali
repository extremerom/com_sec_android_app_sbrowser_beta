.class public final Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;",
        "",
        "<init>",
        "()V",
        "getVisibility",
        "",
        "isRecentSearchEnabled",
        "isSecretMode",
        "searchHistoryItems",
        "",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVisibility(ZZLjava/util/List;)Z
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "searchHistoryItems"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
