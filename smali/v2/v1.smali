.class public final Lv2/v1;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lo3/f;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lo3/f;

.field public d:I


# direct methods
.method public constructor <init>(Lo3/f;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/v1;->c:Lo3/f;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lv2/v1;->b:Ljava/lang/Object;

    iget p1, p0, Lv2/v1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/v1;->d:I

    const/4 p1, 0x0

    iget-object v0, p0, Lv2/v1;->c:Lo3/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lo3/f;->p(ILv2/W0;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
