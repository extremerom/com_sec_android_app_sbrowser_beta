.class public final LJ2/E;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LI3/d;

.field public c:I


# direct methods
.method public constructor <init>(LI3/d;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LJ2/E;->b:LI3/d;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LJ2/E;->a:Ljava/lang/Object;

    iget p1, p0, LJ2/E;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LJ2/E;->c:I

    iget-object p1, p0, LJ2/E;->b:LI3/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LI3/d;->b(LJ2/q0;Lkb/c;)Ljb/a;

    move-result-object p0

    return-object p0
.end method
