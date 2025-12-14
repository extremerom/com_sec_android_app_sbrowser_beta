.class public final Lv2/B;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LL2/k;

.field public b:Ltb/w;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LL2/k;

.field public e:I


# direct methods
.method public constructor <init>(LL2/k;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/B;->d:LL2/k;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/B;->c:Ljava/lang/Object;

    iget p1, p0, Lv2/B;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/B;->e:I

    iget-object p1, p0, Lv2/B;->d:LL2/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LL2/k;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
