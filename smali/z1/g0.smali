.class public final Lz1/g0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lz1/i0;

.field public c:I


# direct methods
.method public constructor <init>(Lz1/i0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lz1/g0;->b:Lz1/i0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lz1/g0;->a:Ljava/lang/Object;

    iget p1, p0, Lz1/g0;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/g0;->c:I

    iget-object p1, p0, Lz1/g0;->b:Lz1/i0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lz1/i0;->h(Lz1/q0;Lz1/V;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
