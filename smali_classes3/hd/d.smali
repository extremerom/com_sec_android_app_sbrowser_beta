.class public final Lhd/d;
.super Lhd/X;
.source "SourceFile"


# instance fields
.field public final a:Ljd/e;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lwd/t;


# direct methods
.method public constructor <init>(Ljd/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd/d;->a:Ljd/e;

    iput-object p2, p0, Lhd/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lhd/d;->c:Ljava/lang/String;

    iget-object p1, p1, Ljd/e;->c:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwd/z;

    new-instance p2, Lhd/c;

    invoke-direct {p2, p1, p0}, Lhd/c;-><init>(Lwd/z;Lhd/d;)V

    invoke-static {p2}, LG5/u2;->c(Lwd/z;)Lwd/t;

    move-result-object p1

    iput-object p1, p0, Lhd/d;->d:Lwd/t;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object p0, p0, Lhd/d;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v2, Lid/b;->a:[B

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final contentType()Lhd/D;
    .locals 1

    iget-object p0, p0, Lhd/d;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lhd/D;->d:Ljava/util/regex/Pattern;

    invoke-static {p0}, LG5/M3;->d(Ljava/lang/String;)Lhd/D;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final source()Lwd/i;
    .locals 0

    iget-object p0, p0, Lhd/d;->d:Lwd/t;

    return-object p0
.end method
