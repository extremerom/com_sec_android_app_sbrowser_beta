.class public final LV/H;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LV/J;

.field public b:LR/s;

.field public c:Lsb/n;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LV/J;

.field public f:I


# direct methods
.method public constructor <init>(LV/J;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LV/H;->e:LV/J;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LV/H;->d:Ljava/lang/Object;

    iget p1, p0, LV/H;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LV/H;->f:I

    iget-object p1, p0, LV/H;->e:LV/J;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LV/J;->a(LR/s;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
