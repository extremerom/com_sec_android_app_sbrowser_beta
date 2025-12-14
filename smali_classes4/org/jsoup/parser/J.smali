.class public final Lorg/jsoup/parser/J;
.super LF3/f;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/StringBuilder;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/StringBuilder;

.field public final f:Ljava/lang/StringBuilder;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LF3/f;-><init>(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/J;->c:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/J;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/J;->e:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/J;->f:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/J;->g:Z

    sget-object v0, Lorg/jsoup/parser/O;->Doctype:Lorg/jsoup/parser/O;

    iput-object v0, p0, LF3/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final P0()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/J;->c:Ljava/lang/StringBuilder;

    invoke-static {v0}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/J;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/parser/J;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lorg/jsoup/parser/J;->f:Ljava/lang/StringBuilder;

    invoke-static {v0}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/J;->g:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!doctype "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/parser/J;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
