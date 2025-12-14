.class public final LJ2/n0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LJ2/C0;

.field public d:I


# direct methods
.method public constructor <init>(LJ2/C0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LJ2/n0;->c:LJ2/C0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LJ2/n0;->b:Ljava/lang/Object;

    iget p1, p0, LJ2/n0;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LJ2/n0;->d:I

    iget-object p1, p0, LJ2/n0;->c:LJ2/C0;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LJ2/C0;->a(LJ2/C0;LJ2/G;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
