.class public final Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;,
        Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;,
        Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Sem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u000e\u000f\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;",
        "",
        "<init>",
        "()V",
        "",
        "priority",
        "",
        "msg",
        "Ldb/r;",
        "printSemLog",
        "(ILjava/lang/String;)V",
        "printAndroidLog",
        "TAG",
        "Ljava/lang/String;",
        "Debug",
        "Raw",
        "Sem",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DvsAgent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;-><init>()V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$printAndroidLog(Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->printAndroidLog(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$printSemLog(Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->printSemLog(ILjava/lang/String;)V

    return-void
.end method

.method private final printAndroidLog(ILjava/lang/String;)V
    .locals 0

    const-string p0, "DvsAgent"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final printSemLog(ILjava/lang/String;)V
    .locals 0

    const-string p0, "DvsAgent"

    invoke-static {p1, p0, p2}, Lcom/samsung/android/util/SemLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
