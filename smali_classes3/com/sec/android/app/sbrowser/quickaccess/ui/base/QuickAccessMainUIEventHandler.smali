.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u0087\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
        "uiEvent",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "uiEventToLaunch",
        "Ldb/r;",
        "invoke",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final invoke(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/livedata/Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showShortcutSavedToast(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showMaxItemsToast(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showInvalidUrlToast(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showItemAlreadyExisted(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_8
    :goto_4
    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUnableToAddInSecretModeToast(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_a
    :goto_5
    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUnableToEditInSecretModeToast(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_c
    :goto_6
    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    goto :goto_b

    :cond_e
    :goto_7
    if-nez v0, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_11

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Integer;

    if-nez p2, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showDeletedToast(Landroid/content/Context;I)V

    goto :goto_b

    :cond_11
    :goto_8
    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_13

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessSettings(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/livedata/Event;Z)V

    goto :goto_b

    :cond_13
    :goto_9
    if-nez v0, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_15

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showItemAddedFromWebAddress(Landroid/content/Context;)V

    goto :goto_b

    :cond_15
    :goto_a
    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_17

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchNewsFeedTabCategoriesSettingFragment(Landroid/content/Context;)V

    :cond_17
    :goto_b
    return-void
.end method
