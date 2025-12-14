.class public abstract Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;
.super LJ2/U;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation build Landroidx/room/Database;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;",
        "LJ2/U;",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;",
        "searchHistoryDao",
        "()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static instance:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final migrationToRoom:LN2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion$migrationToRoom$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion$migrationToRoom$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->migrationToRoom:LN2/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJ2/U;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->instance:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    return-object v0
.end method

.method public static final synthetic access$getMigrationToRoom$cp()LN2/a;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->migrationToRoom:LN2/a;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->instance:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    return-void
.end method


# virtual methods
.method public abstract searchHistoryDao()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
