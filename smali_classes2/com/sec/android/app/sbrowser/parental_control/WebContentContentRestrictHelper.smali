.class public final Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;
.super Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0003R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0013\u001a\u00070\u0011\u00a2\u0006\u0002\u0008\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;",
        "Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;",
        "<init>",
        "()V",
        "Ldb/r;",
        "updateData",
        "",
        "url",
        "addUrlOnAllowedList",
        "(Ljava/lang/String;)V",
        "",
        "isUrlBlockedByParentalControl",
        "(Ljava/lang/String;)Z",
        "sendSaLogging",
        "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;",
        "repository",
        "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "Landroidx/annotation/NonNull;",
        "parentalControlRepository",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;->Companion:Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;->repository:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;->parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

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

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;->repository:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;->parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getProtectLevel()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->isUrlBlocked(Ljava/lang/String;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public sendSaLogging()V
    .locals 2

    const-string p0, "8220"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getLatestCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;->repository:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->update()V

    return-void
.end method
