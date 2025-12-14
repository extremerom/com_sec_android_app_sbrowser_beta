.class public final Lv2/t1;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lv2/u1;

.field public b:LNc/j0;

.field public c:LYc/a;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lv2/u1;

.field public g:I


# direct methods
.method public constructor <init>(Lv2/u1;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lv2/t1;->f:Lv2/u1;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lv2/t1;->e:Ljava/lang/Object;

    iget p1, p0, Lv2/t1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/t1;->g:I

    const/4 p1, 0x0

    iget-object v0, p0, Lv2/t1;->f:Lv2/u1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lv2/u1;->b(ILNc/j0;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
