.class public final Lv2/o0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:LYc/d;

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lv2/C0;

.field public n:I


# direct methods
.method public constructor <init>(Lv2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/o0;->m:Lv2/C0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/o0;->l:Ljava/lang/Object;

    iget p1, p0, Lv2/o0;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/o0;->n:I

    iget-object p1, p0, Lv2/o0;->m:Lv2/C0;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lv2/C0;->b(Lv2/C0;Lv2/P;Lv2/G;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
