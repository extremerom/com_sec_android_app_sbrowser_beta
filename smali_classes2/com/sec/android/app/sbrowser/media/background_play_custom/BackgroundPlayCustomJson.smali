.class public final Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000 \r2\u00020\u0001:\u0001\rR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087D\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;",
        "",
        "",
        "version",
        "I",
        "getVersion",
        "()I",
        "",
        "",
        "hostList",
        "Ljava/util/List;",
        "getHostList",
        "()Ljava/util/List;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final hostList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hosts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;->Companion:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;->$stable:I

    return-void
.end method


# virtual methods
.method public final getHostList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;->hostList:Ljava/util/List;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;->version:I

    return p0
.end method
