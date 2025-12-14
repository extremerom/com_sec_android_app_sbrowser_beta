.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J>\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0087\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;",
        "",
        "<init>",
        "()V",
        "",
        "keyCodeAndMeta",
        "",
        "isEditMode",
        "isActionDown",
        "hasFocusedChild",
        "Lkotlin/Function0;",
        "dispatchKeyEvent",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;",
        "invoke",
        "(IZZZLsb/a;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;",
        "HandlerResult",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final invoke(IZZZLsb/a;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;
    .locals 1
    .param p4    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZ",
            "Lsb/a;",
            ")",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dispatchKeyEvent"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch p0, :sswitch_data_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto/16 :goto_0

    :sswitch_0
    if-eqz p3, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto/16 :goto_0

    :sswitch_1
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_APPLY_CHANGES:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto/16 :goto_0

    :sswitch_2
    invoke-interface {p4}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :sswitch_3
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_APPLY_CHANGES:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :sswitch_4
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_TEAR_DOWN:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :sswitch_5
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :sswitch_6
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :sswitch_7
    if-eqz p2, :cond_7

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :sswitch_8
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->DELETE_CHECKED_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :sswitch_9
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->SELECT_ALL_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    goto :goto_0

    :cond_9
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7fffffe3 -> :sswitch_9
        -0x7fffffe0 -> :sswitch_8
        -0x7fffffde -> :sswitch_7
        -0x7fffffd6 -> :sswitch_6
        -0x7fffffd2 -> :sswitch_5
        -0x7fffffd0 -> :sswitch_6
        -0x7fffffcd -> :sswitch_4
        -0x7fffff7a -> :sswitch_8
        0x4 -> :sswitch_3
        0x54 -> :sswitch_6
        0x5c -> :sswitch_2
        0x5d -> :sswitch_2
        0x70 -> :sswitch_8
        0x86 -> :sswitch_6
        0x87 -> :sswitch_5
        0x8d -> :sswitch_1
        0x3ee -> :sswitch_0
        0x40000015 -> :sswitch_1
        0x40000016 -> :sswitch_6
        0x4000007a -> :sswitch_6
    .end sparse-switch
.end method
