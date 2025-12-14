.class public final LL2/e;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:LL2/n;

.field public d:Ltb/w;

.field public e:Lib/h;

.field public f:Ltb/w;

.field public g:Z

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:LL2/h;

.field public j:I


# direct methods
.method public constructor <init>(LL2/h;Lib/c;)V
    .locals 0

    iput-object p1, p0, LL2/e;->i:LL2/h;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, LL2/e;->h:Ljava/lang/Object;

    iget p1, p0, LL2/e;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LL2/e;->j:I

    const/4 p1, 0x0

    iget-object v0, p0, LL2/e;->i:LL2/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, LL2/h;->h0(ZLsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
