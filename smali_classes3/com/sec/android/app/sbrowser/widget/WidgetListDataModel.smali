.class public final Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;",
        "",
        "<init>",
        "()V",
        "",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
        "getWidgetData",
        "()Ljava/util/List;",
        "list",
        "Ldb/r;",
        "setWidgetData",
        "(Ljava/util/List;)V",
        "mAdapterData",
        "Ljava/util/List;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private mAdapterData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->Companion:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->mAdapterData:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSWidgetListDataModel$cp()Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->sWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    return-object v0
.end method

.method public static final synthetic access$setSWidgetListDataModel$cp(Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->sWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    return-void
.end method


# virtual methods
.method public final getWidgetData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->mAdapterData:Ljava/util/List;

    return-object p0
.end method

.method public final setWidgetData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->mAdapterData:Ljava/util/List;

    return-void
.end method
