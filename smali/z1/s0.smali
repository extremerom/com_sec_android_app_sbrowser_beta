.class public final Lz1/s0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lz1/u0;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/u0;

.field public d:I


# direct methods
.method public constructor <init>(Lz1/u0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lz1/s0;->c:Lz1/u0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lz1/s0;->b:Ljava/lang/Object;

    iget p1, p0, Lz1/s0;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/s0;->d:I

    iget-object p1, p0, Lz1/s0;->c:Lz1/u0;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lz1/u0;->a(Lz1/u0;Lz1/e;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
