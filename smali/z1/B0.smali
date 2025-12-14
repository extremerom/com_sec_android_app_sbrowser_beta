.class public final Lz1/B0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lz1/F;

.field public e:I


# direct methods
.method public constructor <init>(Lz1/F;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lz1/B0;->d:Lz1/F;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lz1/B0;->c:Ljava/lang/Object;

    iget p1, p0, Lz1/B0;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/B0;->e:I

    const/4 p1, 0x0

    iget-object v0, p0, Lz1/B0;->d:Lz1/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lz1/F;->b(Landroid/content/Context;ILkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
