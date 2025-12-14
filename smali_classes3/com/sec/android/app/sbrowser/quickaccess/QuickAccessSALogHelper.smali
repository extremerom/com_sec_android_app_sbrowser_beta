.class public final Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;",
        "",
        "<init>",
        "()V",
        "",
        "isSecretMode",
        "isEditMode",
        "Ldb/r;",
        "sendEventLog",
        "(ZZ)V",
        "isMostVisitedEnabled",
        "sendDisplayEventLog",
        "",
        "screenId",
        "(ZZ)Ljava/lang/String;",
        "displayEventName",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final displayEventName(ZZ)Ljava/lang/String;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "1002"

    goto :goto_0

    :cond_0
    const-string p0, "1001"

    :goto_0
    return-object p0
.end method

.method private static final screenId(ZZ)Ljava/lang/String;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    const-string p0, "101"

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "102"

    goto :goto_0

    :cond_1
    const-string p0, "100"

    :goto_0
    return-object p0
.end method

.method public static final sendDisplayEventLog(ZZ)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;->screenId(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;->displayEventName(ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final sendEventLog(ZZ)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;->screenId(ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method
