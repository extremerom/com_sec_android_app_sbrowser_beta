.class public final Lv2/f;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lv2/g;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:LQc/i;


# direct methods
.method public constructor <init>(Lv2/g;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/f;->c:Lv2/g;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/f;->a:Ljava/lang/Object;

    iget p1, p0, Lv2/f;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/f;->b:I

    iget-object p1, p0, Lv2/f;->c:Lv2/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lv2/g;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
