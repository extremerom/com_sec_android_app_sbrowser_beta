.class public final Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Debug"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0015\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u0008R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;",
        "",
        "<init>",
        "()V",
        "",
        "msg",
        "Ldb/r;",
        "i",
        "(Ljava/lang/String;)V",
        "d",
        "e",
        "w",
        "",
        "isDebug",
        "Z",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;-><init>()V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;

    const-string v0, "ro.product_ship"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.build.type"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userdebug"

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;->isDebug:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "msg"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;->isDebug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->access$printAndroidLog(Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "msg"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;->isDebug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;

    const/4 v0, 0x6

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->access$printAndroidLog(Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "msg"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;->isDebug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->access$printAndroidLog(Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "msg"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Debug;->isDebug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;->access$printAndroidLog(Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
