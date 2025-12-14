.class public final Lz1/j;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/content/Context;

.field public c:Lx1/n;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lz1/p;

.field public f:I


# direct methods
.method public constructor <init>(Lz1/p;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lz1/j;->e:Lz1/p;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lz1/j;->d:Ljava/lang/Object;

    iget p1, p0, Lz1/j;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/j;->f:I

    iget-object p1, p0, Lz1/j;->e:Lz1/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lz1/p;->e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
