.class public final LC3/g;
.super Lo3/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lo3/e;


# direct methods
.method public constructor <init>(Lo3/e;)V
    .locals 0

    iput-object p1, p0, LC3/g;->c:Lo3/e;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo3/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final i(LF6/t;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LC3/g;->c:Lo3/e;

    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Lz3/D;

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x40233333    # 2.55f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    return-object p0
.end method
