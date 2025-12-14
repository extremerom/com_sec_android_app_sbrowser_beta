.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;,
        Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R#\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;",
        "",
        "<init>",
        "()V",
        "Ldb/r;",
        "updateHistoryItems",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;",
        "itemsListener",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;",
        "LQc/h;",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "itemsFlow",
        "LQc/h;",
        "getItemsFlow",
        "()LQc/h;",
        "Lcom/sec/terrace/browser/history/TerraceHistoryModel;",
        "model",
        "Lcom/sec/terrace/browser/history/TerraceHistoryModel;",
        "getModel",
        "()Lcom/sec/terrace/browser/history/TerraceHistoryModel;",
        "Companion",
        "ItemsListener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final itemsFlow:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemsListener:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;

.field private final model:Lcom/sec/terrace/browser/history/TerraceHistoryModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$itemsFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$itemsFlow$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;Lib/c;)V

    invoke-static {v0}, LQc/n0;->g(Lsb/n;)LQc/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->itemsFlow:LQc/h;

    new-instance v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->model:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;-><init>()V

    return-void
.end method

.method public static final synthetic access$getItemsListener$p(Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;)Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->itemsListener:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;

    return-object p0
.end method

.method public static final synthetic access$setItemsListener$p(Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->itemsListener:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;

    return-void
.end method


# virtual methods
.method public final getItemsFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->itemsFlow:LQc/h;

    return-object p0
.end method

.method public final updateHistoryItems()V
    .locals 2

    const-string v0, "HistoryRepository"

    const-string v1, "updateHistoryItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->model:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getRecentHistoryByCount(I)V

    return-void
.end method
