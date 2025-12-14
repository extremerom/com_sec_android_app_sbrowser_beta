.class public final Lv2/X0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lv2/e;

.field public b:Ljava/util/List;

.field public c:Lv2/O;

.field public d:Lv2/O;

.field public e:LB3/c;

.field public f:Lv2/J0;

.field public g:I

.field public h:I

.field public i:Z

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lv2/e;

.field public l:I


# direct methods
.method public constructor <init>(Lv2/e;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lv2/X0;->k:Lv2/e;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Lv2/X0;->j:Ljava/lang/Object;

    iget p1, p0, Lv2/X0;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/X0;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lv2/X0;->k:Lv2/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lv2/e;->a(Lv2/e;Ljava/util/List;IIZLv2/O;Lv2/O;LB3/c;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
