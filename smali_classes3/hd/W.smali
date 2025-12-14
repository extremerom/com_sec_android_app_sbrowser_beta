.class public final Lhd/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lhd/D;)Lhd/V;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LKc/a;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    sget-object v1, Lhd/D;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lhd/D;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; charset=utf-8"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/M3;->d(Ljava/lang/String;)Lhd/D;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    new-instance v1, Lwd/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "charset"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3, v0}, Lwd/g;->r0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v2, v1, Lwd/g;->b:J

    invoke-static {v1, p1, v2, v3}, Lhd/W;->b(Lwd/i;Lhd/D;J)Lhd/V;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lwd/i;Lhd/D;J)Lhd/V;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhd/V;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lhd/V;-><init>(Ljava/lang/Object;JLwd/i;I)V

    return-object v0
.end method

.method public static c([BLhd/D;)Lhd/V;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lwd/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lwd/g;->W([BII)V

    array-length p0, p0

    int-to-long v1, p0

    invoke-static {v0, p1, v1, v2}, Lhd/W;->b(Lwd/i;Lhd/D;J)Lhd/V;

    move-result-object p0

    return-object p0
.end method
