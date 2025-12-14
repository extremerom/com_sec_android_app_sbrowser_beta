.class public final LL2/u;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LL2/w;

.field public f:I


# direct methods
.method public constructor <init>(LL2/w;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LL2/u;->e:LL2/w;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LL2/u;->d:Ljava/lang/Object;

    iget p1, p0, LL2/u;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LL2/u;->f:I

    iget-object p1, p0, LL2/u;->e:LL2/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LL2/w;->g(LJ2/l0;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
