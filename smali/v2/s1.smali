.class public final Lv2/s1;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lv2/u1;

.field public b:LNc/j0;

.field public c:LYc/d;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lv2/u1;

.field public f:I


# direct methods
.method public constructor <init>(Lv2/u1;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lv2/s1;->e:Lv2/u1;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/s1;->d:Ljava/lang/Object;

    iget p1, p0, Lv2/s1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/s1;->f:I

    iget-object p1, p0, Lv2/s1;->e:Lv2/u1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lv2/u1;->a(LNc/j0;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
