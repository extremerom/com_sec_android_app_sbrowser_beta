.class public final LQc/D;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LQc/E;

.field public c:I


# direct methods
.method public constructor <init>(LQc/E;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/D;->b:LQc/E;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/D;->a:Ljava/lang/Object;

    iget p1, p0, LQc/D;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/D;->c:I

    iget-object p1, p0, LQc/D;->b:LQc/E;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LQc/E;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
