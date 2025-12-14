.class public final LNc/T;
.super LNc/V;
.source "SourceFile"


# instance fields
.field public final c:LNc/k;

.field public final synthetic d:LNc/X;


# direct methods
.method public constructor <init>(LNc/X;JLNc/k;)V
    .locals 0

    iput-object p1, p0, LNc/T;->d:LNc/X;

    invoke-direct {p0, p2, p3}, LNc/V;-><init>(J)V

    iput-object p4, p0, LNc/T;->c:LNc/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LNc/T;->c:LNc/k;

    iget-object p0, p0, LNc/T;->d:LNc/X;

    invoke-virtual {v0, p0}, LNc/k;->B(LNc/x;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, LNc/V;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LNc/T;->c:LNc/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
