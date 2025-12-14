.class public final Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate;",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate;->Companion:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;

    return-void
.end method

.method public static final onEventReceived(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/livedata/Event;
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

    sget-object v0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate;->Companion:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate$Companion;->onEventReceived(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method
