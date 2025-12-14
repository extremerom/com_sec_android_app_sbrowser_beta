.class public final LZ1/f;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LZ1/g;

.field public c:I


# direct methods
.method public constructor <init>(LZ1/g;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LZ1/f;->b:LZ1/g;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LZ1/f;->a:Ljava/lang/Object;

    iget p1, p0, LZ1/f;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LZ1/f;->c:I

    iget-object p1, p0, LZ1/f;->b:LZ1/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LZ1/g;->d(Li0/a;Lkb/c;)Ljb/a;

    move-result-object p0

    return-object p0
.end method
