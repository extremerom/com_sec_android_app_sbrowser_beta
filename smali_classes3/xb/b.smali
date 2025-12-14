.class public final Lxb/b;
.super Lxb/a;
.source "SourceFile"


# instance fields
.field public final c:LL3/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lxb/d;-><init>()V

    new-instance v0, LL3/f;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LL3/f;-><init>(I)V

    iput-object v0, p0, Lxb/b;->c:LL3/f;

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lxb/b;->c:LL3/f;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
