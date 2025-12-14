.class public final LDb/g0;
.super LDb/o0;
.source "SourceFile"

# interfaces
.implements LAb/q;


# instance fields
.field public final f:LDb/h0;


# direct methods
.method public constructor <init>(LDb/h0;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LDb/o0;-><init>()V

    iput-object p1, p0, LDb/g0;->f:LDb/h0;

    return-void
.end method


# virtual methods
.method public final a()LAb/u;
    .locals 0

    iget-object p0, p0, LDb/g0;->f:LDb/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LDb/g0;->f:LDb/h0;

    invoke-virtual {p0, p1}, LDb/h0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l()LDb/r0;
    .locals 0

    iget-object p0, p0, LDb/g0;->f:LDb/h0;

    return-object p0
.end method
