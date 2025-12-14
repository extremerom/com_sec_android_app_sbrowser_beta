.class public final LL2/t;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LL2/w;

.field public b:LL2/i;

.field public c:Z

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LL2/w;

.field public f:I


# direct methods
.method public constructor <init>(LL2/w;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LL2/t;->e:LL2/w;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LL2/t;->d:Ljava/lang/Object;

    iget p1, p0, LL2/t;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LL2/t;->f:I

    iget-object p1, p0, LL2/t;->e:LL2/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LL2/w;->f(ZLkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
