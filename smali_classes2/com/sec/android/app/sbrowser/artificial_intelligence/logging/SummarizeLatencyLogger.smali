.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/logging/SummarizeLatencyLogger;
.super Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/logging/SummarizeLatencyLogger;",
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/logging/SummarizeLatencyLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/logging/SummarizeLatencyLogger;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/logging/SummarizeLatencyLogger;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/logging/SummarizeLatencyLogger;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/logging/SummarizeLatencyLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger;-><init>()V

    return-void
.end method
