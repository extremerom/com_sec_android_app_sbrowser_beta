.class public final Lv2/t0;
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

.field public h:Lv2/C0;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lv2/u0;

.field public k:I


# direct methods
.method public constructor <init>(Lv2/u0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/t0;->j:Lv2/u0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/t0;->i:Ljava/lang/Object;

    iget p1, p0, Lv2/t0;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/t0;->k:I

    iget-object p1, p0, Lv2/t0;->j:Lv2/u0;

    invoke-virtual {p1, p0}, Lv2/u0;->b(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
