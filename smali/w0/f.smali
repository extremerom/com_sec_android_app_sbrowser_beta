.class public final Lw0/f;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lw0/g;

.field public b:J

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lw0/g;

.field public e:I


# direct methods
.method public constructor <init>(Lw0/g;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lw0/f;->d:Lw0/g;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lw0/f;->c:Ljava/lang/Object;

    iget p1, p0, Lw0/f;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw0/f;->e:I

    iget-object p1, p0, Lw0/f;->d:Lw0/g;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lw0/g;->a(JLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
