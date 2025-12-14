.class public final LL2/v;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LL2/w;

.field public b:Ljava/lang/String;

.field public c:Lsb/k;

.field public d:LL2/i;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LL2/w;

.field public g:I


# direct methods
.method public constructor <init>(LL2/w;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LL2/v;->f:LL2/w;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LL2/v;->e:Ljava/lang/Object;

    iget p1, p0, LL2/v;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LL2/v;->g:I

    iget-object p1, p0, LL2/v;->f:LL2/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LL2/w;->a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
