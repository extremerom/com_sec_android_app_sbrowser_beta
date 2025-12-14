.class public final LQc/l0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LQc/m0;

.field public b:LQc/i;

.field public c:LQc/o0;

.field public d:LNc/j0;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LQc/m0;

.field public g:I


# direct methods
.method public constructor <init>(LQc/m0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/l0;->f:LQc/m0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/l0;->e:Ljava/lang/Object;

    iget p1, p0, LQc/l0;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/l0;->g:I

    iget-object p1, p0, LQc/l0;->f:LQc/m0;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LQc/m0;->k(LQc/m0;LQc/i;Lib/c;)Ljb/a;

    move-result-object p0

    return-object p0
.end method
