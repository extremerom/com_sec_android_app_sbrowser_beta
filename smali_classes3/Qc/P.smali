.class public final LQc/P;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LQc/M;

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:LQc/M;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQc/M;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/P;->d:LQc/M;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/P;->b:Ljava/lang/Object;

    iget p1, p0, LQc/P;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/P;->c:I

    iget-object p1, p0, LQc/P;->d:LQc/M;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LQc/M;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
