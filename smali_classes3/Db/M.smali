.class public final LDb/M;
.super LDb/q0;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final f:LDb/N;


# direct methods
.method public constructor <init>(LDb/N;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LDb/q0;-><init>()V

    iput-object p1, p0, LDb/M;->f:LDb/N;

    return-void
.end method


# virtual methods
.method public final a()LAb/u;
    .locals 0

    iget-object p0, p0, LDb/M;->f:LDb/N;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LDb/M;->f:LDb/N;

    iget-object p0, p0, LDb/N;->k:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/M;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final l()LDb/r0;
    .locals 0

    iget-object p0, p0, LDb/M;->f:LDb/N;

    return-object p0
.end method
