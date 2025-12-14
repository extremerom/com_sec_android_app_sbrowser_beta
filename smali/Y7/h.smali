.class public final LY7/h;
.super LY7/r;
.source "SourceFile"


# instance fields
.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, LY7/s;->EMAIL_ADDRESS:LY7/s;

    invoke-direct {p0, v0}, LY7/r;-><init>(LY7/s;)V

    iput-object p1, p0, LY7/h;->b:[Ljava/lang/String;

    iput-object p2, p0, LY7/h;->c:[Ljava/lang/String;

    iput-object p3, p0, LY7/h;->d:[Ljava/lang/String;

    iput-object p4, p0, LY7/h;->e:Ljava/lang/String;

    iput-object p5, p0, LY7/h;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LY7/h;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/h;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/h;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/h;->e:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, LY7/h;->f:Ljava/lang/String;

    invoke-static {v0, p0}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
