.class public final Lm1/q;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final a:Lm1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm1/q;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, Lm1/q;->a:Lm1/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lm1/o;

    check-cast p2, Ljava/lang/Throwable;

    const-string p0, "msg"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lm1/n;

    if-eqz p0, :cond_1

    check-cast p1, Lm1/n;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string p0, "DataStore scope was cancelled before updateData could complete"

    invoke-direct {p2, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p1, Lm1/n;->b:LNc/q;

    new-instance p1, LNc/s;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, p1}, LNc/t0;->V(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
