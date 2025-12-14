.class public final LDb/d0;
.super LDb/o0;
.source "SourceFile"

# interfaces
.implements LAb/o;


# instance fields
.field public final f:LDb/e0;


# direct methods
.method public constructor <init>(LDb/e0;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LDb/o0;-><init>()V

    iput-object p1, p0, LDb/d0;->f:LDb/e0;

    return-void
.end method


# virtual methods
.method public final a()LAb/u;
    .locals 0

    iget-object p0, p0, LDb/d0;->f:LDb/e0;

    return-object p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LDb/d0;->f:LDb/e0;

    iget-object p0, p0, LDb/e0;->j:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/d0;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l()LDb/r0;
    .locals 0

    iget-object p0, p0, LDb/d0;->f:LDb/e0;

    return-object p0
.end method
