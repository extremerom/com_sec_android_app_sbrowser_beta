.class public final LWc/f;
.super LWc/i;
.source "SourceFile"


# static fields
.field public static final c:LWc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LWc/f;

    sget v3, LWc/l;->c:I

    sget v4, LWc/l;->d:I

    sget-wide v5, LWc/l;->e:J

    sget-object v2, LWc/l;->a:Ljava/lang/String;

    invoke-direct {v0}, LNc/x;-><init>()V

    new-instance v7, LWc/d;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LWc/d;-><init>(Ljava/lang/String;IIJ)V

    iput-object v7, v0, LWc/i;->b:LWc/d;

    sput-object v0, LWc/f;->c:LWc/f;

    return-void
.end method


# virtual methods
.method public final J(I)LNc/x;
    .locals 1

    const/4 p1, 0x1

    invoke-static {p1}, LUc/a;->b(I)V

    sget v0, LWc/l;->c:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, LNc/x;->J(I)LNc/x;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
