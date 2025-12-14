.class public final Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ?\u0010\u000e\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "url",
        "",
        "version",
        "iuid",
        "",
        "promotionEnable",
        "Ldb/r;",
        "initialize",
        "(Landroid/content/Context;Ljava/lang/String;IIZ)V",
        "newVersion",
        "LNc/x;",
        "dispatcher",
        "LNc/j0;",
        "(Landroid/content/Context;Ljava/lang/String;IIZLNc/x;)LNc/j0;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;

    sget-object v7, LNc/N;->c:LWc/e;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil;->initialize(Landroid/content/Context;Ljava/lang/String;IIZLNc/x;)LNc/j0;

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Ljava/lang/String;IIZLNc/x;)LNc/j0;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dispatcher"

    invoke-static {p6, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p0

    new-instance p6, Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil$initialize$1;

    const/4 v6, 0x0

    move-object v0, p6

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/public_things/PublicThingsUtil$initialize$1;-><init>(Landroid/content/Context;ILjava/lang/String;ZILib/c;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p2, p6, p1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method
