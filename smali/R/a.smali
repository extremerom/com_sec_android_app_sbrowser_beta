.class public final LR/a;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LR/d;

.field public b:J

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LR/d;

.field public e:I


# direct methods
.method public constructor <init>(LR/d;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LR/a;->d:LR/d;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, LR/a;->c:Ljava/lang/Object;

    iget p1, p0, LR/a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LR/a;->e:I

    const/4 p1, 0x0

    iget-object v0, p0, LR/a;->d:LR/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, LR/d;->b(JLS/j0;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
