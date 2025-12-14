.class public final LNc/J0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ltb/w;

.field public synthetic b:Ljava/lang/Object;

.field public c:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, LNc/J0;->b:Ljava/lang/Object;

    iget p1, p0, LNc/J0;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LNc/J0;->c:I

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p0}, LNc/E;->M(JLsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
