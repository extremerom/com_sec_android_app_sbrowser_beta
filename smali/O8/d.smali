.class public final LO8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/t1;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0xd

    if-lez p1, :cond_0

    long-to-double p2, p3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p2

    double-to-long p3, v0

    :cond_0
    iput-wide p3, p0, LO8/d;->a:J

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/s1;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/x1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/recyclerview/widget/x1;->b:Ljava/lang/Object;

    new-instance p0, LN/k;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, LN/k;-><init>(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/recyclerview/widget/x1;->a:Ljava/lang/Object;

    return-object v0
.end method
