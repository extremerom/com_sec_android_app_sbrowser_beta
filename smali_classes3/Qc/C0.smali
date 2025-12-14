.class public final LQc/C0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LQc/D0;

.field public b:LRc/H;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LQc/D0;

.field public e:I


# direct methods
.method public constructor <init>(LQc/D0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LQc/C0;->d:LQc/D0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/C0;->c:Ljava/lang/Object;

    iget p1, p0, LQc/C0;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/C0;->e:I

    iget-object p1, p0, LQc/C0;->d:LQc/D0;

    invoke-virtual {p1, p0}, LQc/D0;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
