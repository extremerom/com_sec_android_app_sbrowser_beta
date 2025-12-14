.class public final synthetic LPc/d;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# static fields
.field public static final a:LPc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LPc/d;

    const-string v5, "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v2, 0x0

    const/4 v1, 0x3

    const-class v3, LPc/i;

    const-string v4, "processResultSelectReceiveCatching"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LPc/d;->a:LPc/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LPc/i;

    sget-object p0, LPc/i;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LPc/k;->l:LQ6/i;

    if-ne p3, p0, :cond_0

    invoke-virtual {p1}, LPc/i;->s()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p3, LPc/n;

    invoke-direct {p3, p0}, LPc/n;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    new-instance p0, LPc/p;

    invoke-direct {p0, p3}, LPc/p;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
