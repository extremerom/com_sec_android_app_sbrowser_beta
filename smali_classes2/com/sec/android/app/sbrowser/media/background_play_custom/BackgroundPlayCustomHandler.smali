.class public final Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;",
        "",
        "Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;",
        "mDelegate",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;)V",
        "",
        "url",
        "Ldb/r;",
        "updateAllowed",
        "(Ljava/lang/String;)V",
        "updateAllowedInThread",
        "Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;",
        "getMDelegate",
        "()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;",
        "Delegate",
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


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mDelegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;->mDelegate:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;->updateAllowed$lambda$0(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;Ljava/lang/String;)V

    return-void
.end method

.method private static final updateAllowed$lambda$0(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;->updateAllowedInThread(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final updateAllowed(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final updateAllowedInThread(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getBackgroundPlay()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->Companion:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;->getInstance()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->isBlocked(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;->mDelegate:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setBackgroundPlayAllowed(Z)V

    :cond_1
    return-void
.end method
