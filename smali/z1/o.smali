.class public final Lz1/o;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lz1/i;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/p;

.field public d:I


# direct methods
.method public constructor <init>(Lz1/p;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lz1/o;->c:Lz1/p;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lz1/o;->b:Ljava/lang/Object;

    iget p1, p0, Lz1/o;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/o;->d:I

    iget-object p1, p0, Lz1/o;->c:Lz1/p;

    invoke-virtual {p1, p0}, Lz1/p;->j(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
