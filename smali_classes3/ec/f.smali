.class public final Lec/f;
.super Lec/a;
.source "SourceFile"


# static fields
.field public static final g:Lec/f;

.field public static final h:Lec/f;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lec/f;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lec/f;-><init>(Z[I)V

    sput-object v0, Lec/f;->g:Lec/f;

    iget v4, v0, Lec/a;->c:I

    iget v0, v0, Lec/a;->b:I

    if-ne v0, v2, :cond_0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    new-instance v0, Lec/f;

    filled-new-array {v1, v3, v3}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lec/f;-><init>(Z[I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lec/f;

    add-int/2addr v4, v2

    filled-new-array {v0, v4, v3}, [I

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lec/f;-><init>(Z[I)V

    move-object v0, v1

    :goto_0
    sput-object v0, Lec/f;->h:Lec/f;

    new-instance v0, Lec/f;

    new-array v1, v3, [I

    invoke-direct {v0, v3, v1}, Lec/f;-><init>(Z[I)V

    return-void
.end method

.method public constructor <init>(Z[I)V
    .locals 1

    const-string v0, "versionArray"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lec/a;-><init>([I)V

    iput-boolean p1, p0, Lec/f;->f:Z

    return-void
.end method


# virtual methods
.method public final b(Lec/f;)Z
    .locals 4

    const-string v0, "metadataVersionFromLanguageVersion"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lec/f;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lec/f;->g:Lec/f;

    goto :goto_0

    :cond_0
    sget-object v0, Lec/f;->h:Lec/f;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lec/a;->b:I

    iget v2, v0, Lec/a;->b:I

    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ge v2, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v0, Lec/a;->c:I

    iget v2, p1, Lec/a;->c:I

    if-le v1, v2, :cond_3

    :goto_1
    move-object p1, v0

    :cond_3
    :goto_2
    iget v0, p0, Lec/a;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget p0, p0, Lec/a;->b:I

    if-ne p0, v1, :cond_4

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    iget v3, p1, Lec/a;->b:I

    if-le p0, v3, :cond_6

    :goto_3
    move v2, v1

    goto :goto_4

    :cond_6
    if-ge p0, v3, :cond_7

    goto :goto_4

    :cond_7
    iget p0, p1, Lec/a;->c:I

    if-le v0, p0, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    xor-int/2addr v2, v1

    :goto_5
    return v2
.end method
