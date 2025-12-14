.class public final LI1/e;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LI1/f;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LI1/f;

.field public d:I


# direct methods
.method public constructor <init>(LI1/f;Lib/c;)V
    .locals 0

    iput-object p1, p0, LI1/e;->c:LI1/f;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LI1/e;->b:Ljava/lang/Object;

    iget p1, p0, LI1/e;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LI1/e;->d:I

    iget-object p1, p0, LI1/e;->c:LI1/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LI1/f;->b(La0/j0;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
