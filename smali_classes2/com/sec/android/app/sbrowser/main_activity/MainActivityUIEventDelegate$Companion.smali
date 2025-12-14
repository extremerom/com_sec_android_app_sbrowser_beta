.class public final Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;",
        "event",
        "Ldb/r;",
        "onEventReceived",
        "(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEventReceived(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/livedata/Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;->getId()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;->getId()I

    move-result p0

    const-string p1, "unknown event id : "

    const-string p2, "MainActivityUIEventDelegate"

    invoke-static {p0, p1, p2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p0, 0x7f140b55

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->showWithDelay(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p0, 0x7f140b5f

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->showWithDelay(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const p0, 0x7f140648

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->showWithDelay(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const p0, 0x7f140b60

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->showWithDelay(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const p0, 0x7f140b7f

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->showWithDelay(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
