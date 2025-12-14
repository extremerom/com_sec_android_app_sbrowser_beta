.class public final Lc2/k;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lc2/m;

.field public b:Landroid/content/Context;

.field public c:Lsb/k;

.field public d:LPc/b;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lc2/m;

.field public g:I


# direct methods
.method public constructor <init>(Lc2/m;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lc2/k;->f:Lc2/m;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc2/k;->e:Ljava/lang/Object;

    iget p1, p0, Lc2/k;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc2/k;->g:I

    iget-object p1, p0, Lc2/k;->f:Lc2/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lc2/m;->h(Landroid/content/Context;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
