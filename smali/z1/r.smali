.class public final Lz1/r;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lz1/s;

.field public c:I


# direct methods
.method public constructor <init>(Lz1/s;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lz1/r;->b:Lz1/s;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lz1/r;->a:Ljava/lang/Object;

    iget p1, p0, Lz1/r;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/r;->c:I

    iget-object p1, p0, Lz1/r;->b:Lz1/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lz1/s;->d(Li0/a;Lkb/c;)Ljb/a;

    move-result-object p0

    return-object p0
.end method
