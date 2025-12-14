.class public final LQc/x;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:LQc/y;

.field public d:LQc/y;

.field public e:LQc/i;

.field public f:LRc/H;


# direct methods
.method public constructor <init>(LQc/y;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/x;->c:LQc/y;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/x;->a:Ljava/lang/Object;

    iget p1, p0, LQc/x;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/x;->b:I

    iget-object p1, p0, LQc/x;->c:LQc/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LQc/y;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
