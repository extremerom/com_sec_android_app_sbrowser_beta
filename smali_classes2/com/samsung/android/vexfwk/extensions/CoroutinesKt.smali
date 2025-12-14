.class public final Lcom/samsung/android/vexfwk/extensions/CoroutinesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a#\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a#\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a:\u0010\u000f\u001a\u00020\u000b*\u00020\u00082\'\u0010\u000e\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\t\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a@\u0010\u0011\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00082\'\u0010\u000e\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\t\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "T",
        "LPc/m;",
        "LPc/p;",
        "tryReceiveLast",
        "(LPc/m;)Ljava/lang/Object;",
        "",
        "drain",
        "(LPc/m;)Ljava/util/List;",
        "LNc/B;",
        "Lkotlin/Function2;",
        "Lib/c;",
        "Ldb/r;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "launchAndJoin",
        "(LNc/B;Lsb/n;)V",
        "asyncAndAwait",
        "(LNc/B;Lsb/n;)Ljava/lang/Object;",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static final asyncAndAwait(LNc/B;Lsb/n;)Ljava/lang/Object;
    .locals 2
    .param p0    # LNc/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lsb/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LNc/B;",
            "Lsb/n;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v1}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    new-instance p1, Lv9/e;

    invoke-direct {p1, p0, v0}, Lv9/e;-><init>(LNc/I;Lib/c;)V

    sget-object p0, Lib/i;->a:Lib/i;

    invoke-static {p0, p1}, LNc/E;->D(Lib/h;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final drain(LPc/m;)Ljava/util/List;
    .locals 3
    .param p0    # LPc/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LPc/m;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p0}, LPc/A;->n()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LPc/o;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v2, :cond_0

    invoke-static {v1}, LPc/p;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static final launchAndJoin(LNc/B;Lsb/n;)V
    .locals 2
    .param p0    # LNc/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lsb/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lsb/n;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, p1, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    new-instance p1, Lv9/f;

    invoke-direct {p1, p0, v0}, Lv9/f;-><init>(LNc/C0;Lib/c;)V

    invoke-static {p1}, LNc/E;->E(Lsb/n;)Ljava/lang/Object;

    return-void
.end method

.method public static final tryReceiveLast(LPc/m;)Ljava/lang/Object;
    .locals 3
    .param p0    # LPc/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LPc/m;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LPc/A;->n()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LPc/o;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-interface {p0}, LPc/A;->n()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LPc/o;

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
