.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;",
        "",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sVideoSubtitleControllerScript:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->sVideoSubtitleControllerScript:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSVideoSubtitleControllerScript$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->sVideoSubtitleControllerScript:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setSVideoSubtitleControllerScript$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->sVideoSubtitleControllerScript:Ljava/lang/String;

    return-void
.end method
