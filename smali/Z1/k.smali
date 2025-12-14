.class public final LZ1/k;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LZ1/p;

.field public b:Landroid/content/Context;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LZ1/p;

.field public e:I


# direct methods
.method public constructor <init>(LZ1/p;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LZ1/k;->d:LZ1/p;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LZ1/k;->c:Ljava/lang/Object;

    iget p1, p0, LZ1/k;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LZ1/k;->e:I

    iget-object p1, p0, LZ1/k;->d:LZ1/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LZ1/p;->e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
