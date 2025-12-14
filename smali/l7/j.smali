.class public final Ll7/j;
.super Ll7/l;
.source "SourceFile"


# static fields
.field public static final b:[Ll7/j;

.field public static final c:Ll7/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Ll7/j;

    sput-object v0, Ll7/j;->b:[Ll7/j;

    const/4 v0, -0x1

    invoke-static {v0}, Ll7/j;->l(I)Ll7/j;

    const/4 v0, 0x0

    invoke-static {v0}, Ll7/j;->l(I)Ll7/j;

    move-result-object v0

    sput-object v0, Ll7/j;->c:Ll7/j;

    const/4 v0, 0x1

    invoke-static {v0}, Ll7/j;->l(I)Ll7/j;

    const/4 v0, 0x2

    invoke-static {v0}, Ll7/j;->l(I)Ll7/j;

    const/4 v0, 0x3

    invoke-static {v0}, Ll7/j;->l(I)Ll7/j;

    const/4 v0, 0x4

    invoke-static {v0}, Ll7/j;->l(I)Ll7/j;

    const/4 v0, 0x5

    invoke-static {v0}, Ll7/j;->l(I)Ll7/j;

    return-void
.end method

.method public static l(I)Ll7/j;
    .locals 4

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Ll7/j;->b:[Ll7/j;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    iget v3, v2, Ll7/l;->a:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    new-instance v2, Ll7/j;

    invoke-direct {v2, p0}, Ll7/l;-><init>(I)V

    aput-object v2, v1, v0

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget p0, p0, Ll7/l;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "int"

    return-object p0
.end method

.method public final getType()Lm7/c;
    .locals 0

    sget-object p0, Lm7/c;->l:Lm7/c;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "int{0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ll7/l;->a:I

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
