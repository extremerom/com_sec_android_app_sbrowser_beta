.class public final LNc/I0;
.super LUc/w;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:J


# direct methods
.method public constructor <init>(JLkb/c;)V
    .locals 1

    invoke-interface {p3}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    invoke-direct {p0, p3, v0}, LUc/w;-><init>(Lib/c;Lib/h;)V

    iput-wide p1, p0, LNc/I0;->e:J

    return-void
.end method


# virtual methods
.method public final X()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, LNc/t0;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LNc/I0;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, LNc/a;->c:Lib/h;

    invoke-static {v0}, LNc/E;->o(Lib/h;)LNc/J;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timed out waiting for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, LNc/I0;->e:J

    const-string v3, " ms"

    invoke-static {v1, v2, v3, v0}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LNc/H0;

    invoke-direct {v1, v0, p0}, LNc/H0;-><init>(Ljava/lang/String;LNc/I0;)V

    invoke-virtual {p0, v1}, LNc/t0;->A(Ljava/lang/Object;)Z

    return-void
.end method
