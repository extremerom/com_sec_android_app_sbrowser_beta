.class public LY7/E;
.super LY7/r;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:LY7/F;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;LY7/F;)V
    .locals 1

    sget-object v0, LY7/s;->WIFI:LY7/s;

    invoke-direct {p0, v0}, LY7/r;-><init>(LY7/s;)V

    iput-object p2, p0, LY7/E;->b:Ljava/lang/String;

    iput-object p1, p0, LY7/E;->c:Ljava/lang/String;

    iput-object p3, p0, LY7/E;->d:Ljava/lang/String;

    iput-boolean p4, p0, LY7/E;->e:Z

    iput-object p5, p0, LY7/E;->g:Ljava/lang/String;

    iput-object p6, p0, LY7/E;->f:LY7/F;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LY7/E;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, LY7/E;->c:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, LY7/E;->d:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean p0, p0, LY7/E;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
