.class public final LTb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LTb/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTb/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LTb/d;->a:LTb/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LJb/C;

    sget-object p0, LTb/e;->a:Ljava/lang/Object;

    const-string p0, "module"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LTb/c;->b:Lhc/f;

    invoke-interface {p1}, LJb/C;->j()LGb/i;

    move-result-object p1

    sget-object v0, LGb/p;->t:Lhc/c;

    invoke-virtual {p1, v0}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object p1

    invoke-static {p0, p1}, LG5/v2;->e(Lhc/f;LJb/f;)LMb/T;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, LMb/U;

    invoke-virtual {p0}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, LAc/k;->UNMAPPED_ANNOTATION_TARGET_TYPE:LAc/k;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p0, p1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    :cond_1
    return-object p0
.end method
