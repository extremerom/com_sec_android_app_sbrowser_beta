.class public final Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;",
        "",
        "<init>",
        "()V",
        "getVisibility",
        "",
        "quickAccessVisibility",
        "type",
        "",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowVisibility;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVisibility(ZI)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    :cond_0
    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v0

    :cond_2
    :goto_0
    return p1
.end method
