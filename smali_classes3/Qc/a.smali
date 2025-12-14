.class public final LQc/a;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LRc/H;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LQc/k;

.field public d:I


# direct methods
.method public constructor <init>(LQc/k;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/a;->c:LQc/k;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/a;->b:Ljava/lang/Object;

    iget p1, p0, LQc/a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/a;->d:I

    iget-object p1, p0, LQc/a;->c:LQc/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LQc/k;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
