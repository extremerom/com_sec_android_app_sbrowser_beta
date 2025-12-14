.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;",
        "",
        "<init>",
        "()V",
        "invoke",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;",
        "",
        "input",
        "",
        "textMaxLength",
        "",
        "ErrorType",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;I)Ljava/util/Map;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->getHasError()Lsb/n;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lfb/l;->J([Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lfb/B;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
