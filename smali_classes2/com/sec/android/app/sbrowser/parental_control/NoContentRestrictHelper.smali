.class public final Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;
.super Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;",
        "Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
        "tab",
        "",
        "url",
        "Ldb/r;",
        "checkUrlBlocked",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/String;)V",
        "",
        "moveToCorrectPageIfNeeded",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/String;)Z",
        "updateData",
        "addUrlOnAllowedList",
        "(Ljava/lang/String;)V",
        "isUrlBlockedByParentalControl",
        "(Ljava/lang/String;)Z",
        "sendSaLogging",
        "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;",
        "repository",
        "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final repository:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;->Companion:Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;->repository:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    const-string p0, "NoContentRestrictHelper"

    const-string v0, "init"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addUrlOnAllowedList(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public checkUrlBlocked(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public moveToCorrectPageIfNeeded(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "tab"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSaLogging()V
    .locals 0

    return-void
.end method

.method public updateData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;->repository:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->update()V

    return-void
.end method
