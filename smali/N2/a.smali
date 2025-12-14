.class public abstract LN2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final endVersion:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final startVersion:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LN2/a;->startVersion:I

    iput p2, p0, LN2/a;->endVersion:I

    return-void
.end method


# virtual methods
.method public migrate(LS2/a;)V
    .locals 1
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LM2/a;

    if-eqz v0, :cond_0

    check-cast p1, LM2/a;

    iget-object p1, p1, LM2/a;->a:LT2/a;

    invoke-virtual {p0, p1}, LN2/a;->migrate(LT2/a;)V

    return-void

    :cond_0
    new-instance p0, Ldb/i;

    const-string p1, "Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract migrate(LT2/a;)V
.end method
