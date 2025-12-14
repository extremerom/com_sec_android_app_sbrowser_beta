.class public final LZ7/a;
.super LY7/r;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:LZ7/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;LZ7/c;)V
    .locals 1

    sget-object v0, LY7/s;->IOT:LY7/s;

    invoke-direct {p0, v0}, LY7/r;-><init>(LY7/s;)V

    iput-object p1, p0, LZ7/a;->b:Ljava/lang/String;

    iput-object p2, p0, LZ7/a;->c:LZ7/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, LZ7/a;->b:Ljava/lang/String;

    invoke-static {v0, p0}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
