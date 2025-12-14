.class public final Lw0/e;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lw0/g;

.field public b:J

.field public c:J

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lw0/g;

.field public f:I


# direct methods
.method public constructor <init>(Lw0/g;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lw0/e;->e:Lw0/g;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lw0/e;->d:Ljava/lang/Object;

    iget p1, p0, Lw0/e;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw0/e;->f:I

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lw0/e;->e:Lw0/g;

    const-wide/16 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lw0/g;->g(JJLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
