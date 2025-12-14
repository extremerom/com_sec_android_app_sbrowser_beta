.class public final Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u0008\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u00028\u00000\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u0000H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0089\u0001\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0010\"\u0004\u0008\u0000\u0010\r\"\u0004\u0008\u0001\u0010\u000e\"\u0004\u0008\u0002\u0010\u000f2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00102F\u0010\u0019\u001aB\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\u001c8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0003\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;",
        "",
        "<init>",
        "()V",
        "T",
        "Landroidx/lifecycle/X;",
        "newValue",
        "Ldb/r;",
        "trigger",
        "(Landroidx/lifecycle/X;Ljava/lang/Object;)V",
        "Landroidx/lifecycle/S;",
        "distinctUntilChangedInIO",
        "(Landroidx/lifecycle/S;)Landroidx/lifecycle/S;",
        "T1",
        "T2",
        "R",
        "LQc/h;",
        "flow",
        "flow2",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "a",
        "b",
        "Lib/c;",
        "transform",
        "zip",
        "(LQc/h;LQc/h;Lsb/o;)LQc/h;",
        "",
        "isMainThread",
        "()Z",
        "isMainThread$annotations",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final distinctUntilChangedInIO(Landroidx/lifecycle/S;)Landroidx/lifecycle/S;
    .locals 2
    .param p0    # Landroidx/lifecycle/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/S;",
            ")",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object p0

    invoke-static {p0}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object p0

    sget-object v0, LNc/N;->c:LWc/e;

    invoke-static {p0, v0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object p0

    return-object p0
.end method

.method public static final isMainThread()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method public static final trigger(Landroidx/lifecycle/X;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Landroidx/lifecycle/X;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/X;",
            "TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils$trigger$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils$trigger$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils$trigger$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils$trigger$2;-><init>(Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic trigger$default(Landroidx/lifecycle/X;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->trigger(Landroidx/lifecycle/X;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zip(LQc/h;LQc/h;Lsb/o;)LQc/h;
    .locals 1
    .param p1    # LQc/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQc/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lsb/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LQc/h;",
            "LQc/h;",
            "Lsb/o;",
            ")",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "flow"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flow2"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "transform"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LL2/l;

    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, p3, v0}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    return-object p0
.end method
