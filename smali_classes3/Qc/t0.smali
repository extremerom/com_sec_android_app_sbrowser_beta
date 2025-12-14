.class public final LQc/t0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LJ2/u;

.field public c:I


# direct methods
.method public constructor <init>(LJ2/u;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/t0;->b:LJ2/u;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/t0;->a:Ljava/lang/Object;

    iget p1, p0, LQc/t0;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/t0;->c:I

    iget-object p1, p0, LQc/t0;->b:LJ2/u;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LJ2/u;->b(ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
