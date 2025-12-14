.class public final LZ1/n;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lk0/g;

.field public c:LPc/A;

.field public d:LPc/b;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LZ1/p;

.field public g:I


# direct methods
.method public constructor <init>(LZ1/p;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LZ1/n;->f:LZ1/p;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LZ1/n;->e:Ljava/lang/Object;

    iget p1, p0, LZ1/n;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LZ1/n;->g:I

    iget-object p1, p0, LZ1/n;->f:LZ1/p;

    invoke-virtual {p1, p0}, LZ1/p;->m(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
