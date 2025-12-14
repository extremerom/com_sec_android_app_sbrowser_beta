.class public final LY7/v;
.super LY7/r;
.source "SourceFile"


# instance fields
.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, LY7/s;->SMS:LY7/s;

    invoke-direct {p0, v0}, LY7/r;-><init>(LY7/s;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LY7/v;->b:[Ljava/lang/String;

    const/4 p1, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LY7/v;->c:[Ljava/lang/String;

    iput-object p1, p0, LY7/v;->d:Ljava/lang/String;

    iput-object p2, p0, LY7/v;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, LY7/s;->SMS:LY7/s;

    invoke-direct {p0, v0}, LY7/r;-><init>(LY7/s;)V

    iput-object p1, p0, LY7/v;->b:[Ljava/lang/String;

    iput-object p3, p0, LY7/v;->c:[Ljava/lang/String;

    iput-object p2, p0, LY7/v;->d:Ljava/lang/String;

    iput-object p4, p0, LY7/v;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LY7/v;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/v;->d:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, LY7/v;->e:Ljava/lang/String;

    invoke-static {v0, p0}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
