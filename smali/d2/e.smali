.class public final Ld2/e;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ld2/g;

.field public b:Ljava/lang/String;

.field public c:Lsb/n;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ld2/f;

.field public f:I


# direct methods
.method public constructor <init>(Ld2/f;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Ld2/e;->e:Ld2/f;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Ld2/e;->d:Ljava/lang/Object;

    iget p1, p0, Ld2/e;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ld2/e;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Ld2/e;->e:Ld2/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Ld2/f;->d(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
