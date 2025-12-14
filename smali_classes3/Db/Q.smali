.class public final LDb/Q;
.super LDb/q0;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final f:LDb/S;


# direct methods
.method public constructor <init>(LDb/S;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LDb/q0;-><init>()V

    iput-object p1, p0, LDb/Q;->f:LDb/S;

    return-void
.end method


# virtual methods
.method public final a()LAb/u;
    .locals 0

    iget-object p0, p0, LDb/Q;->f:LDb/S;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LDb/Q;->f:LDb/S;

    iget-object p0, p0, LDb/S;->k:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/Q;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final l()LDb/r0;
    .locals 0

    iget-object p0, p0, LDb/Q;->f:LDb/S;

    return-object p0
.end method
