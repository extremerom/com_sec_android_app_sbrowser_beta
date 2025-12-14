.class public final Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0008\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;",
        "getInstance",
        "()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;",
        "getInstance$annotations",
        "instance",
        "",
        "TAG",
        "Ljava/lang/String;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;-><init>()V

    return-void
.end method

.method private static final _get_instance_$lambda$0()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;-><init>(Ltb/f;)V

    return-object v0
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;->_get_instance_$lambda$0()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getInstance()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lf1/g;

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lf1/g;-><init>(I)V

    const-class v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getOrCreate(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;

    return-object p0
.end method
