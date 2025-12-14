.class public final Lv2/m0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lv2/C0;

.field public b:Lv2/D0;

.field public c:LYc/d;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lv2/C0;

.field public f:I


# direct methods
.method public constructor <init>(Lv2/C0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lv2/m0;->e:Lv2/C0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/m0;->d:Ljava/lang/Object;

    iget p1, p0, Lv2/m0;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/m0;->f:I

    iget-object p1, p0, Lv2/m0;->e:Lv2/C0;

    invoke-virtual {p1, p0}, Lv2/C0;->e(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
