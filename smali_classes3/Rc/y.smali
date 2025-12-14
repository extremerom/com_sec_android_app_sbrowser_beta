.class public final LRc/y;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LQc/q;

.field public c:I


# direct methods
.method public constructor <init>(LQc/q;Lib/c;)V
    .locals 0

    iput-object p1, p0, LRc/y;->b:LQc/q;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LRc/y;->a:Ljava/lang/Object;

    iget p1, p0, LRc/y;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LRc/y;->c:I

    iget-object p1, p0, LRc/y;->b:LQc/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LQc/q;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
