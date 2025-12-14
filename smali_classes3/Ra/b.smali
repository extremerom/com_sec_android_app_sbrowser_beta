.class public final LRa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# static fields
.field public static final b:Lhd/D;


# instance fields
.field public final a:LB3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lhd/D;->d:Ljava/util/regex/Pattern;

    const-string v0, "application/xml; charset=UTF-8"

    invoke-static {v0}, LG5/M3;->d(Ljava/lang/String;)Lhd/D;

    move-result-object v0

    sput-object v0, LRa/b;->b:Lhd/D;

    return-void
.end method

.method public constructor <init>(LB3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRa/b;->a:LB3/c;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lwd/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, LRa/b;->a:LB3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LQa/i;

    invoke-direct {v1, v0}, LQa/i;-><init>(Lwd/g;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object p0, p0, LB3/c;->a:Ljava/lang/Object;

    check-cast p0, LQa/a;

    iget-object v3, p0, LQa/a;->b:Lo3/f;

    invoke-virtual {v3, v2}, Lo3/f;->m(Ljava/lang/Class;)LSa/b;

    move-result-object v2

    iget-boolean v3, p0, LQa/a;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v3, v1, LQa/i;->b:Z

    sget-object v5, LQa/i;->i:Lwd/j;

    if-nez v3, :cond_1

    invoke-virtual {v1}, LQa/i;->c()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v5}, Lwd/g;->V(Lwd/j;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, LQa/i;->b:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Xml Declatraion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lwd/j;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can only be written at the beginning of a xml document! You are not at the beginning of a xml document: current xml scope is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, LQa/i;->d:I

    iget-object v0, v1, LQa/i;->c:[I

    invoke-static {p1, v0}, LQa/e;->e(I[I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, LQa/i;->f(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Xml declaration "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lwd/j;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has already been written in this xml document. Xml declaration can only be written once at the beginning of the document."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-interface {v2, v1, p0, p1, v4}, LSa/b;->toXml(LQa/i;LQa/a;Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide p0, v0, Lwd/g;->b:J

    invoke-virtual {v0, p0, p1}, Lwd/g;->v(J)Lwd/j;

    move-result-object p0

    sget-object p1, LRa/b;->b:Lhd/D;

    invoke-static {p1, p0}, Lhd/Q;->create(Lhd/D;Lwd/j;)Lhd/Q;

    move-result-object p0

    return-object p0
.end method
