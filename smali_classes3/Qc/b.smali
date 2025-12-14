.class public final LQc/b;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LPc/y;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LQc/c;

.field public d:I


# direct methods
.method public constructor <init>(LQc/c;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LQc/b;->c:LQc/c;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/b;->b:Ljava/lang/Object;

    iget p1, p0, LQc/b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/b;->d:I

    iget-object p1, p0, LQc/b;->c:LQc/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LQc/c;->d(LPc/y;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
