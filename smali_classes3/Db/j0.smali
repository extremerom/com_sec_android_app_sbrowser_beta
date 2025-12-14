.class public final LDb/j0;
.super LDb/o0;
.source "SourceFile"

# interfaces
.implements LAb/s;


# instance fields
.field public final f:LDb/k0;


# direct methods
.method public constructor <init>(LDb/k0;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LDb/o0;-><init>()V

    iput-object p1, p0, LDb/j0;->f:LDb/k0;

    return-void
.end method


# virtual methods
.method public final a()LAb/u;
    .locals 0

    iget-object p0, p0, LDb/j0;->f:LDb/k0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LDb/j0;->f:LDb/k0;

    iget-object p0, p0, LDb/k0;->j:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/j0;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l()LDb/r0;
    .locals 0

    iget-object p0, p0, LDb/j0;->f:LDb/k0;

    return-object p0
.end method
