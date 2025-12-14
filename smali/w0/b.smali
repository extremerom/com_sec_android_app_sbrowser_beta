.class public final Lw0/b;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lw0/d;

.field public c:I


# direct methods
.method public constructor <init>(Lw0/d;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lw0/b;->b:Lw0/d;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lw0/b;->a:Ljava/lang/Object;

    iget p1, p0, Lw0/b;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw0/b;->c:I

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lw0/b;->b:Lw0/d;

    const-wide/16 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lw0/d;->a(JJLkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
