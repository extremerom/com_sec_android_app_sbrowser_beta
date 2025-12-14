.class public abstract Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
.super LJ2/U;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation build Landroidx/room/Database;
.end annotation

.annotation build Landroidx/room/TypeConverters;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;",
        "LJ2/U;",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;",
        "siLogDao",
        "()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
        "siStatusLogDao",
        "()Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile INSTANCE:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;

    const-string v0, "SILogDatabase"

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJ2/U;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->INSTANCE:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    return-object v0
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->INSTANCE:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    return-void
.end method


# virtual methods
.method public abstract siLogDao()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract siStatusLogDao()Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
