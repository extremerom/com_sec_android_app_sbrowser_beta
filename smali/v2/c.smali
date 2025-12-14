.class public final Lv2/c;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lv2/e;

.field public b:Lv2/i;

.field public c:Lv2/T0;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lv2/e;

.field public f:I


# direct methods
.method public constructor <init>(Lv2/e;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lv2/c;->e:Lv2/e;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/c;->d:Ljava/lang/Object;

    iget p1, p0, Lv2/c;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/c;->f:I

    iget-object p1, p0, Lv2/c;->e:Lv2/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lv2/e;->c(Lv2/F;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
